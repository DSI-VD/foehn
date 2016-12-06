---
title: Domains list
name: domains-list
collection: organisms
wrapper: container
notes: |
---
{% for domain_id, domain in data.domains.topics %}
<div class="row mt-3">
  <div class="col-md-4">
    <h2 id="{{ domain_id }}">{{ domain.name }}</h2>
    <h3 id="acces-direct-{{ domain }}">Accès direct <span class="sr-only">{{ domain }}</span></h3>
    <nav class="vd-bg-pattern-green p-1" aria-labelledby="acces-direct-{{ domain }}">
      <ul class="nav vd-list-boxed">
        <li class="nav-item"><a href="#" class="nav-link">Lorem ipsum dolor.</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Lorem ipsum dolor.</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Lorem ipsum dolor.</a></li>
      </ul>
    </nav>
  </div><!-- /.col-md-4 -->

  <div class="col-md-8">
    <div class="row" aria-labelledby="{{ domain }}">
      {% for theme in domain.themes %}
        {% include "../molecules/teaser-link.html.swig" with {teaser_link_name: theme, teaser_link_classes: 'col-md-6', teaser_link_text:'Qui officia deserunt mollit anim id est laborum.' , teaser_link_href: '../poursuites-et-faillites'} only %}
      {% endfor %}
    </div><!-- /.row -->
  </div><!-- /.col-md-8 -->
</div><!-- /.row -->
<p>
  <a href="#" class="btn btn-primary btn-sm vd-btn-chevron-t">Tous les thèmes</a>
</p>
{% if ! loop.last %}
<hr class="vd-separator vd-separator-green-pattern vd-separator-wide mt-3">
{% endif %}
{% endfor %}
