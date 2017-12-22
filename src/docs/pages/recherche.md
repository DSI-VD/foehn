---
title: Page de recherche
---

Documentation sur [la page de recherche]({{ '/components/detail/search' | path }}).

## Champs de recherche

Il ne doit pas y avoir de champ de recherche dans le *header*. Il est affiché
dans le contenu de la page.

## Résultats

On affiche 10 résultats par page.

### Titre

Il s'agit du titre de la page, de la news ou du fichiers.

Dans le cas d'un fichiers, l'extension du fichier doit être incluse dans le
titre.

```
{% render '@search-item--file' %}
```

### Meta informations

S'il s'agit d'une prestation ou d'une actualité, l'information est affichée
en-dessous du titre.

```
{% render '@search-item--news' %}
```
```
{% render '@search-item--prestation' %}
```

### Description

Reprend la descrition de la page et dans le cas où elle n'est pas présente, il
faut afficher un extrait de la page.

## Première recherche

Si on arrive sur la page sans effectuer de recherche, [uniquement le champs de
recherche est présent]({{ '/components/detail/search--no-search' | path }}).

## Pas de réultats

Si la recherche ne donne aucun résultat, on [oriente l'utilisateur avec un
message]({{ '/components/detail/search--no-results' | path }}).
