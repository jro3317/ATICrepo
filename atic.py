import os
import sys
import argparse
from bottle import route, run, template, static_file


# get current location, set as current location, and append to path
current_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(current_dir)
sys.path.append(current_dir)


@route('/')
def index():
    return template('templates/index.tpl')


@route('/static/<filename:path>')
def server_static(filename):
        return static_file(filename, root=os.path.join(current_dir, 'static'))


@route('/contact')
def contact():
    return template('templates/contact.tpl')


def get_port():
    description = 'A bottle server for the HILT Institute'
    parser = argparse.ArgumentParser(description)
    parser.add_argument('-p', '--port', type=int,
                        help="The port number the server will run on")
    args = parser.parse_args()

    return args.port if args.port else 8080


if __name__ == '__main__':
    run(host='0.0.0.0', port=get_port(), reloader=True, debug=True)
