---
title: Link
name: link
collection: inlinetext
bootstrap:
variants:
  heading: With a heading class
notes: |
---
{% if not variant -%}
<a href="#">This is a text link</a>
{% else -%}
<a class="h2" href="#">This is a black .h2 link</a><br>
<span class="h2"><a href="#">This is a normal .h2 link</a></span>
{% endif -%}
