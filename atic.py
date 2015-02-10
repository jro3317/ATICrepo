import os
import sys
import argparse
import sqlite3
import bottle
from bottle import route, run, template, static_file


# get current location, set as current location, and append to path
current_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(current_dir)
sys.path.append(current_dir)


@route('/')
def index():
    return template('templates/index.tpl')


@route('/about')
def index():
    return template('templates/info.tpl')


@route('/contact')
def index():
    return template('templates/contact.tpl')

@route('/projects')
def index():
    return template('templates/projects.tpl')

#connects to database
def get_data(dbfile, table):
    db = sqlite3.connect(dbfile)
    cur = db.cursor()
    cur.execute("select * from  {0}".format(table))
    return cur.fetchall()

#page for the list of projects
@bottle.get('/projects/projectlist')
def index():
    data = get_data("projects.db", "projects")
    data.sort()
    return bottle.template('templates/projectlist.tpl', data=data)    

#page for adding a project
@bottle.get('/projectlist/addproject')
def addproject():
    return bottle.template('templates/addproject.tpl')

#submit button function
@bottle.post('/projects/projectlist/addproject/submit')
def added():
    parts = bottle.request.forms
    db = sqlite3.connect('projects.db')
    cur = db.cursor()
    if parts['name'] != '' or parts['description'] != '':
        cur.execute("INSERT INTO projects VALUES(?,?)",
        (parts['name'], parts['description']))
    new_id = cur.lastrowid
    db.commit()
    cur.close
    return '<a href="/projectlist">Back</a>'
    
@route('/static/<filename:path>')
def server_static(filename):
        return static_file(filename, root=os.path.join(current_dir, 'static'))


def get_port():
    description = 'A bottle server for the HILT Institute'
    parser = argparse.ArgumentParser(description)
    parser.add_argument('-p', '--port', type=int,
                        help="The port number the server will run on")
    args = parser.parse_args()

    return args.port if args.port else 8080


if __name__ == '__main__':
    run(host='0.0.0.0', port=get_port(), reloader=True, debug=True)
