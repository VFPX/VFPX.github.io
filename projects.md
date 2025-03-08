---
layout: page
permalink: /projects/
---

## VFPX Projects

<table>
<thead>
<tr>
<td><strong>Project</strong></td>
<td><strong>Description</strong></td>
<td><strong>Category</strong></td>
<td><strong>Status</strong></td>
<td><strong>Install with Thor</strong></td>
<td><strong>Install with FoxGet</strong></td>
</tr>
</thead>
<tbody>
{% assign projlist = site.data.projects %}
{% for project in projlist %}
<tr>
	<td><a target="_blank" href="{{ project.url }}">{{ project.project }}</a></td>
	<td>{{ project.description }}</td>
	<td>{{ project.category }}</td>
	<td>{{ project.state }}</td>
	<td style="text-align: center;">{% if project.thorcfu == true %} &check; {% else %} &nbsp; {% endif %}</td>
	<td style="text-align: center;">{% if project.foxget  == true %} &check; {% else %} &nbsp; {% endif %}</td>
</tr>
{% endfor %}
</tbody>
</table>

### Other Open Source VFP Projects

This is a list of other open source VFP projects that aren't part of VFPX.

<table>
<thead>
<tr>
<td><strong>Project</strong></td>
<td><strong>Description</strong></td>
</tr>
</thead>
<tbody>
{% assign projlist = site.data.nonvfpx %}
{% for project in projlist %}
<tr>
	<td><a target="_blank" href="{{ project.url }}">{{ project.project }}</a></td>
	<td>{{ project.description }}</td>
</tr>
{% endfor %}
</tbody>
</table>