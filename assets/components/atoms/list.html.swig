---
title: List
name: list
collection: atoms
bootstrap: http://v4-alpha.getbootstrap.com/content/reboot/#lists
variants:
  links: List of links
  unstyled: Unstyled list
notes: |
  Add the `.vd-list-links` class to display square bullets links and bold text.

  To print an unstyled list, use the [Bootstrap class](http://v4-alpha.getbootstrap.com/content/typography/#unstyled) `.list-unstyled`.
---
{% if not variant -%}
<ul>
  <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
  <li>Lorem ipsum dolor sit amet, consectetur</li>
  <li>Lorem ipsum dolor</li>
  <li>Lorem ipsum dolor sit amet, consectetur adipisicing</li>
  <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
</ul>
{%- elseif variant == 'links' -%}
<ul class="vd-list-links">
  <li><a href="#0">Link in vd-list-links</a></li>
  <li>Text in vd-list-links</li>
</ul>
{%- elseif variant == 'unstyled' -%}
<ul class="list-unstyled">
  <li>Unstyled element in unstyled list</li>
  <li>Lorem ipsum dolor sit amet, consectetur</li>
  <li>Lorem ipsum dolor</li>
  <li>Lorem ipsum dolor sit amet, consectetur adipisicing</li>
  <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
</ul>
{%- endif -%}
