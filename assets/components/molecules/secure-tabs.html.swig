---
title: Secure Tabs
name: secure-tabs
collection: molecules
notes: |
  Wrap your nav component in a `.vd-bg-pattern-purple` div and obtain tabs for the secure area of the website.
---
<div class="vd-bg-pattern-purple" role="tablist">
  <div class="container vd-nav-tabs-secure">
    <div class="fa fa-lock fa-lg" aria-hidden="true"></div>
    <ul class="nav">
      <li class="nav-item">
        <a class="nav-link active" href="#">Accueil</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Prestations</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Demandes</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" aria-disabled="true">Documents</a>
      </li>
    </ul>
  </div>
</div>
