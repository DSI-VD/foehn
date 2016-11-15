---
title: Header
name: header
collection: organisms
notes: |
---
<header class="header">
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

        {# search form (to include once the PR is merged) #}
        <form class="input-group vd-search-form my-2" action="../recherche-poursuites-et-faillites">
          <label class="sr-only" for="search-form" id="search-form-label">Champ de recherche</label>
          <input id="search-form" type="text" class="form-control" placeholder="Rechercher" aria-describedby="search-form-label">
          <span class="input-group-btn">
            <button class="btn" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </span>
        </form>


      </div>
    </div>
  </div>

  {% include "../molecules/nav-primary.html.swig" %}

</header>
