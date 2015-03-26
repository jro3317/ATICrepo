<h1>Hello fooooorm</h1>

<form>
    Name:<input type="text" name="name" size="20vw"><br></input>
    Company/Organization:<input type="text" name="company"
    size="200px"><br></input>
    Email Address:<input type="text" name="email" size="20vw"><br></input>
    Phone Number:<input type="text" name="phone" size="20vw"<br></input>
    Project Description:<textarea type="text" name="project" cols="70" rows="10" class="project"></textarea><br>
    <input type="submit" value="Submit">
<form>

%rebase templates/layout.tpl title='Form', addstyles=['form']

