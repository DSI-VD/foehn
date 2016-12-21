---
title: Figure
name: figure
collection: molecules
bootstrap: http://v4-alpha.getbootstrap.com/content/figures/#content
variants:
  category: With news category name
notes: |
---
<figure class="figure">
  <div class="vd-figure-img-container">
    <img class="img-fluid figure-img" src="http://placehold.it/400x300" alt="Figure">
    {%- if variant == 'category' %}
    <span class="vd-figure-category">Population</span>
    {%- endif %}
  </div>
  <figcaption class="figure-caption">Ceci est une légende <span class="vd-figure-credits">Photo JACQUES ANDRÉ</span></figcaption>
</figure>
