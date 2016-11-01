---
title: Search Form
name: Search-form
collection: atoms
notes: |
  The main search form, to use in the header.
---

<form class="input-group search-form" action="#">
  <label class="sr-only" for="search-form" id="search-form-label">Champ de recherche</label>
  <input id="search-form" type="text" class="form-control" placeholder="Rechercher" aria-describedby="search-form-label">
  <span class="input-group-btn">
    <button class="btn" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
  </span>
</form>
