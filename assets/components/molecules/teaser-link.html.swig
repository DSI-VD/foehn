---
title: Teaser Link
name: teaser-link
collection: molecules
notes: |
  Used mainly to list organisms in primary nav.
---
<a href="#0" class="vd-teaser-link {{ teaser_link_classes }}">
  <h3 class="vd-teaser-link-title">{% if teaser_link_name %}{{ teaser_link_name }}{% else %}Culture{% endif %}</h3>
  <p class="vd-teaser-link-text">{% if teaser_link_text %}{{ teaser_link_text }}{% else %}Lorem ipsum dolor sit amet, consectetur adipisicing elit.{% endif %}</p>
</a>
