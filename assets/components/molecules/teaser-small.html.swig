---
title: Teaser Small
name: teaser-small
collection: molecules
notes: |
  Used for example in the agenda list, with dates as title and a description
---
<a class="vd-teaser-small" href=“#0”>
  <h3>Title here</h3>
  {% include "../molecules/numbered-title.html.swig" %}
  {% if teaser_small_image %}
  <figure class="vd-teaser-small-img">
    {% include "../atoms/image-responsive.html.swig"  %}
  </figure>
  {% endif %}
  <p class="vd-teaser-small-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
</a>
