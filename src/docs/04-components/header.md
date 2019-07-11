---
title: "En-tête"
label: "En-tête"
status: wip
---

L'en-tête vd.ch montre aux utilisateurs qu'ils se trouvent sur vd.ch et quel service ils utilisent.

{{ '@header-application' | renderComponent }}

## Quand utiliser ce composant

Vous devez utiliser cet en-tête en haut de toutes vos pages si votre service est hébergé sur l'un de ces domaines:

- vd.ch
- *.etat-de-vaud.ch

## Quand ne pas utiliser ce composant

N'utilisez pas ce composant si votre service n'est pas hébergé sur l'un des domaines ci-dessus.
## Comment ça marche

Dans tous les cas, le logo doit être un lien vers la page d'accueil du site vd.ch

### En-tête par défaut

{{ '@header-application' | renderComponent }}

### En-tête avec largeur variable

Si la mise en page le requiert, un en-tête avec largeur variable est disponible

{{ '@header-application--fluid' | renderComponent }}

### En-tête du site vd.ch

vd.ch utilise un en-tête particulier qui lui est réservé.

{{ '@header' | renderComponent }}

