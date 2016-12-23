---
title: Breadcrumb
name: Breadcrumb
collection: molecules
bootstrap: http://v4-alpha.getbootstrap.com/components/breadcrumb/#content
notes: |
---
<nav aria-label="fil d'Ariane">
  <ol class="breadcrumb">
    {% if breadcrumb -%}
    {% for bc_item in breadcrumb -%}
    <li class="breadcrumb-item"><a href="{{ bc_item.href }}">{{  bc_item.name }}</a></li>
    {% endfor -%}
    {% else -%}
    <li class="breadcrumb-item"><a href="#">vd.ch</a></li>
    <li class="breadcrumb-item"><a href="#">Économie</a></li>
    <li class="breadcrumb-item"><a href="#">Poursuite et faillites</a></li>
    {% endif -%}
    <li class="sr-only">Vous êtes ici: [titre de la page]</li>
  </ol>
</nav>
