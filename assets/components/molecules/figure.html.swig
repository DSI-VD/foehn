---
title: Figure
name: figure
collection: molecules
bootstrap: http://v4-alpha.getbootstrap.com/content/figures/#content
variants:
  category: With news category name
notes: |
---
<figure class="figure{% if figure_wrapper %} {{ figure_wrapper }}{% endif %}">
  <div class="vd-figure-img-container">
    <picture class="figure-img">
      <source media="(min-width: 60em)" srcset="http://placehold.it/1600x1067/ACCBE8/ffffff?text=eXtra Large|1600x1067">
      <source media="(min-width: 40em)" srcset="http://placehold.it/960x640/ACCBE8/ffffff?text=Large|960x640">
      <source media="(min-width: 20em)" srcset="http://placehold.it/640x427/F1BF9F/ffffff?text=Medium|640x427">
      <img class="img-fluid" src="https://placehold.it/360x240/F1BF9F/ffffff?text=Default|360x240" alt="article image">
    </picture>
    {%- if variant == 'category' %}
      <span class="vd-figure-category">Population</span>
    {%- endif %}
  </div>
  {% if figcaption == false %}
  <figcaption class="figure-caption">Ceci est une légende
    <span class="vd-figure-credits">Photo JACQUES ANDRÉ</span>
  </figcaption>
  {% endif %}
</figure>
