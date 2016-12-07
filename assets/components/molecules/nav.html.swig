---
title: Nav
name: Nav
collection: molecules
bootstrap: http://v4-alpha.getbootstrap.com/components/navs/#base-nav
notes: |
  Use a `<ul>` list to obtain a bare navigation that is not inline.
---
<nav class="nav nav-inline hidden-sm-down small">
  <h2 class="sr-only">Sous-navigation</h2>
  <ul>
    <li class="nav-item"><a class="nav-link active" href="../autorites"><span class="sr-only">page active: </span>Autorités</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Annuaire</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Agenda</a></li>
    <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
    <li class="nav-item"><span class="fa fa-lock" aria-hidden="true"></span> <a class="nav-link" href="../connexion">Mon compte</a></li>
  </ul>
</nav>
