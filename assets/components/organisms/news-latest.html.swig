---
title: News latest
name: news-latest
collection: organisms
notes: |
---
<h2 class="vd-section-title">Actualités</h2>

{% include "../molecules/teaser.html.swig" with {'teaser_image': true} %}
{% include "../molecules/teaser.html.swig" %}
{% include "../molecules/teaser.html.swig" %}
{% include "../molecules/teaser.html.swig" %}
{% include "../molecules/teaser.html.swig" %}

{% if news_alternate_news_links %}
<h3 class="sr-only">Autres actualités</h3>
<ul class="list-unstyled">
  <li><a href="#" class="btn btn-primary vd-btn-chevron-r btn-sm">Toutes l'actualitées</a></li>
  <li><a href="#" class="btn btn-secondary vd-btn-chevron-r btn-sm">Tous les communiqués</a></li>
  <li><a href="#" class="btn btn-secondary vd-btn-chevron-r btn-sm">Décisions du conseil d'état</a></li>
</ul>
{% else %}
<a href="#" class="btn btn-primary vd-btn-chevron-r btn-sm">Toutes l'actualitées</a>
{% endif %}
