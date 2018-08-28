--- 
title: Pagination 
label: Pagination 
status: wip 
---

{{ '@pagination--default' | renderComponent }}

Liens qui permettent aux utilisateurs de naviguer à travers une séquence
linéaire de pages ou d'éléments.

## Quand utiliser ce composant

Une pagination peut être utilisée quand une grande quantité d'enregistrement
doit être présentée comme par exemple des actualités ou une liste de documents.

Une pagination peut être utilisée lorsque l'utilisateur a une séquence
d'information à saisir par exemple un formulaire.

## Quand ne pas utiliser ce composant

Si le nombre d'enregistrements à présenter est inférieur à 50, ne montrez pas du
tout la pagination.

## Fonctionnement

{{ '@pagination' | renderComponent }}

### Première page

Sur la première page, ne présenter que le lien permettant d'aller à la page
suivante.

### Dernière page

Sur la dernière page, ne présenter que le lien permettant d'aller à la page
précédente.

### Label

Les labels permettent aux utilisateurs de se situer dans la séquence.

### Pourquoi ne pas afficher les pages intermédiaires ?

L'étude des statistiques sur les environnements vd.ch a montré que moins de 1%
des utilisateurs se rendent au-delà de la page 2.

