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
</tr>
</thead>
<tbody>
{% assign statelist = site.data.projects | map: 'state' | uniq %}
{% for state in statelist %}
<tr>
	<td colspan="2"><strong>{{ state }}</strong></td>
</tr>
{% assign projlist = site.data.projects | where: "state", state %}
{% for project in projlist %}
<tr>
	<td><a target="_blank" href="{{ project.url }}">{{ project.project }}</a></td>
	<td>{{ project.description }}</td>
</tr>
{% endfor %}
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