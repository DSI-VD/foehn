---
title: Header sécurisé
name: header-securise
collection: organisms
notes: |
---
<header class="header" role="banner">
  {% include "../molecules/access-nav.html.swig" %}
  <div class="container">
    <div class="row">
      <div class="col-xs-12 text-sm-right">

        {% include "../molecules/nav.html.swig" %}
        {% include "../molecules/nav-mobile.html.swig" %}

      </div>

    </div>
    {% include "../molecules/logo-etat.html.swig" %}
  </div>
</header>
