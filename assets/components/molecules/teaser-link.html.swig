---
title: Teaser Link
name: teaser-link
collection: molecules
notes: |
  Used mainly to list organisms in primary nav.
---
<a href="../domaines#Economie" class="vd-teaser-link {% if teaser_link_classes %}{{ teaser_link_classes }}{% else %}col-xs-12{% endif %}">
  <h3 class="vd-teaser-link-title">{% if teaser_link_name %}{{ teaser_link_name }}{% else %}Culture{% endif %}</h3>
  <p class="vd-teaser-link-text">{% if teaser_link_text %}{{ teaser_link_text }}{% else %}Obtenir un extrait du registre des poursuites{% endif %}</p>
</a>
