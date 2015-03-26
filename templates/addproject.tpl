<h1>Add Project</h1>

<p>Fill in the information below to add a project:</p>
<form method="post" action="/projects/projectlist/addproject/submit">
<label>Name:
<input name="name" type="text"></label><br>
Company/Organization:<input type="text" name="company"size="30vw"><br></input>
Email Address:<input type="text" name="email" size="30vw"><br></input>
Phone Number:<input type="text" name="phone" size="30vw"<br></input>
<br>
<label>Description:<br>
<textarea name="description" type="text" cols="70" rows="15"></textarea></label>
<br>
<button type="submit">Submit</button>
</form>

%rebase templates/layout.tpl addstyles=['form']

