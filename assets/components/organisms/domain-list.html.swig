---
title: Domaine list
name: domain-list
collection: organisms
notes: |
---



{% for domain, topics in data.domains.topics %}
  <div class="row mb-3">

    <div class="col-md-4">
      <h2>{{ loop.key }}</h2>
      <p>
        <span class="fa fa-arrow-up" aria-hidden="true"></span> <a href="#">Tous les thèmes</a>
      </p>

      <h3>Accès direct</h3>
      <div class="vd-bg-pattern-green">
        <ul class="nav vd-list-boxed">
          <li class="nav-item"><a href="#" class="nav-link">Prestation 1</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Prestation 2</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Prestation 3</a></li>
        </ul>
      </div>

    </div><!-- /.col-md-4 -->

    <div class="col-md-8">
      <div class="row">
        {% for topic in topics %}
        <a href="#" class="col-md-6">
          <h3>{{ topic }}</h3>
          <p>
            Lorem ipsum dolor sit amet, consectetur.
          </p>
        </a>
        {% endfor %}
      </div><!-- /.row -->

    </div><!-- /.col-md-8 -->
  </div><!-- /.row -->
{% endfor %}

</div><!-- /.row -->
