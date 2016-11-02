---
title: Domains list
name: domains-list
collection: organisms
notes: |
---
{% for domain, themes in data.domains.topics %}
<div class="row">
  <div class="col-md-4">
    <h2>{{ loop.key }}</h2>
    <p>
      <span class="fa fa-arrow-up" aria-hidden="true"></span> <a href="#">Tous les thèmes</a>
    </p>
    <h3>Accès direct</h3>
    <div class="vd-bg-pattern-green p-1">
      <ul class="nav vd-list-boxed">
        <li class="nav-item"><a href="#" class="nav-link">Prestation 1</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Prestation 2</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Prestation 3</a></li>
      </ul>
    </div>
  </div><!-- /.col-md-4 -->

  <div class="col-md-8">
    <div class="row">
      {% for theme in themes %}
      <a href="#" class="col-md-6">
        <h3>{{ theme }}</h3>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        </p>
      </a>
      {% endfor %}
    </div><!-- /.row -->
  </div><!-- /.col-md-8 -->
    
</div><!-- /.row -->
{% endfor %}
