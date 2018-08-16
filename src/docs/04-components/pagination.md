---
title: Pagination
label: Pagination
status: wip
---

{{ '@pagination' | renderComponent }}

Liens qui permettent aux utilisateurs de naviguer à travers une séquence
linéaire de pages ou d'éléments.

## Quand utiliser ce composant

Une pagination peut être utilisé quand une grande quantité d'enregistrement doit
être présenté comme par exemple des actualités où une liste de documents.

Une pagination peut être utiliser lorsque l'utilisateur à une séquence
d'information à saisir comme par exemple un formulaire.

## Quand ne pas utiliser ce composant

Si le nombre d'enregistrements à présenter est inférieur à 50, ne montrez pas du
toute la pagination.

<div class="foehn-example">
{% render '@pagination' %}
</div>

```html
{% render '@pagination' %}
```


