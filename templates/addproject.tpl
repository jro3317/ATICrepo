<h1>Add Project</h1>

<p>Fill in the information below to add a project:</p>
<form method="post" action="/projects/projectlist/addproject/submit">
<label>Name: <br>
<input name="name" type="text"></label>
<br>
<label>Description: <br>
<textarea name="description" type="text" cols="70" rows="15"></textarea></label>
<br>
<button type="submit">Submit</button>
</form>

%rebase templates/layout.tpl addstyles=['form']

