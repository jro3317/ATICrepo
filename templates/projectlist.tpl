<h1>List of Proposed Projects</h1>

<table>
<tr>
  <th>Name</th>
  <th>Description</th>
</tr>
%for row in data:
<tr>
  %for col in row:
  <td>{{col}}</td>
  %end
</tr>
%end
</table>

<form class="buttons">
<button formaction="/projectlist/addproject">Add Project</button>
</form>

%rebase templates/layout.tpl addstyles=[]

