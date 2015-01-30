<h1>Hello form</h1>

<form>
    Name:<br><input type="text" name="name"><br>
    Project Description:<br><textarea type="text" name="project" cols="70" rows="10" class="project"></textarea><br>
    <input type="submit" value="Submit">
<form>

%rebase templates/layout.tpl title='Form', addstyles=['form']

