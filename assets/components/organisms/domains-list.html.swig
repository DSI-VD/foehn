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
    <p>
      <span class="fa fa-arrow-up" aria-hidden="true"></span> <a href="#">Tous les thèmes</a>
    </p>
    <h3>Accès direct</h3>
    <div class="vd-bg-pattern-green p-1">
      <ul class="nav vd-list-boxed">
        <li class="nav-item"><a href="#" class="nav-link">Lorem ipsum dolor.</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Lorem ipsum dolor.</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Lorem ipsum dolor.</a></li>
      </ul>
    </div>
  </div><!-- /.col-md-4 -->

  <div class="col-md-8">
    <div class="row">
      {% for theme in domain.themes %}
        {% include "../molecules/teaser-link.html.swig" with {teaser_link_name: theme, teaser_link_classes: 'col-md-6', teaser_link_text:'Qui officia deserunt mollit anim id est laborum.' , teaser_link_href: '../poursuites-et-faillites'} only %}
      {% endfor %}
    </div><!-- /.row -->
  </div><!-- /.col-md-8 -->

</div><!-- /.row -->
{% endfor %}
