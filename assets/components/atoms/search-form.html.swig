---
title: Search Form
name: search-form
collection: atoms
notes: |
  The main search form, the one we use in the header. `.vd-search-form`
---
<form class="input-group vd-search-form my-2" action="#">
  <label class="sr-only" for="search-form" id="search-form-label">Champ de recherche</label>
  <input id="search-form" type="text" class="form-control" placeholder="Rechercher" aria-describedby="search-form-label">
  <span class="input-group-btn">
    <button class="btn" type="submit" aria-label="Rechercher"><i class="fa fa-search" aria-hidden="true"></i></button>
  </span>
</form>
