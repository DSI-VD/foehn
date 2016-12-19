---
title: Search Form
name: search-form
collection: atoms
variants:
  regular: Regular
notes: |
  The main search form, the one we use in the header. `.vd-search-form`.

  The regular variant is used in other parts of the website. `.vd-search-form-regular`
---
{% if variant == 'regular' %}
<h3>Rechercher dans les actualités</h3>
{% endif -%}
<form class="input-group my-2 {% if variant == 'regular' %}vd-search-form-regular{% else %}vd-search-form{% endif %}" action="#">
  <label class="sr-only" for="search-form" id="search-form-label">Champ de recherche</label>
  <input id="search-form" type="text" class="form-control" placeholder="Rechercher" aria-describedby="search-form-label">
  <span class="input-group-btn">
<button class="btn{% if variant == 'regular' %} btn-primary{% endif %}" type="submit" aria-label="Rechercher"><i class="fa fa-search" aria-hidden="true"></i></button>
  </span>
</form>
