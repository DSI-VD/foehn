---
title: Header sécurisé
name: header-securise
collection: organisms
notes: |
---
<header class="header" role="banner">
  {% include "../molecules/access-nav.html.swig" %}
  <div class="container">
    <nav class="nav nav-inline text-xxs-right" aria-label="sous-navigation">
      <a class="nav-link" href="#">Contact</a>
      <div class="nav-link dropdown-container">
        {% include "../molecules/dropdown.html.swig" %}
      </div>
    </nav>
    {% include "../molecules/logo-etat.html.swig" %}
  </div>
</header>
