---
title: Header
name: header
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
    <div class="row">
      <div class="col-md-5">
        {% include "../molecules/logo-etat.html.swig" %}
      </div>
      <div class="col-md-5 offset-md-2">
        {% include "../atoms/search-form.html.swig" %}
      </div>
    </div>
  </div>
</header>
