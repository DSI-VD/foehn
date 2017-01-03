---
title: Pagination vertical
name: pagination-vertical
collection: molecules
notes: |
  You can apply the following class to the list element to style it:
  `.success`, `.warning`, `.current`, `.disabled`
---
<nav aria-label="Page navigation">
  <ul class="vd-vertical-pagination">
    <li class="vd-page-item success">
        <span class="vd-page-item-bullet"><span aria-hidden="true" class="fa fa-check"></span><span class="sr-only">(Complété avec succès)</span></span>
        <a class="vd-page-item-title" href="#">Données du demandeur</a>
    </li>
    <li class="vd-page-item warning">
        <span class="vd-page-item-bullet"><span aria-hidden="true" class="fa fa-question"></span><span class="sr-only">(Demande votre attention)</span></span>
        <a class="vd-page-item-title" href="#">Identité de l'enfant</a>
    </li>
    <li class="vd-page-item active">
        <span class="vd-page-item-bullet">3<span class="sr-only">(Élément courant)</span></span>
        <a class="vd-page-item-title" href="#">Auteur du signalement</a>
    </li>
    <li class="vd-page-item">
        <span class="vd-page-item-bullet">4</span>
        <a class="vd-page-item-title" href="#">Données 4</a>
    </li>
    <li class="vd-page-item">
        <span class="vd-page-item-bullet">5</span>
        <a class="vd-page-item-title" href="#">Données 5</a>
    </li>
    <li class="vd-page-item disabled">
      <span class="vd-page-item-bullet">6<span class="sr-only">(Désactivé)</span></span>
      <span class="vd-page-item-title">Données 6</span>
    </li>
    <li class="vd-page-item">
      <span class="vd-page-item-bullet">7</span>
      <a class="vd-page-item-title" href="#">Données 7</a>
    </li>
    <li class="vd-page-item">
      <span class="vd-page-item-bullet">12</span>
      <a class="vd-page-item-title" href="#">Envoyer le formulaire</a>
    </li>
  </ul></nav>
