---
title: "En-tête"
label: "En-tête"
status: review
---

L'en-tête vd.ch montre aux utilisateurs qu'ils se trouvent sur vd.ch et quel service ils utilisent.

{{ '@header-application' | renderComponent | safe }}

## Quand utiliser ce composant

Vous devez utiliser cet en-tête en haut de toutes vos pages si votre service est hébergé sur l'un de ces domaines:

- vd.ch
- *.etat-de-vaud.ch

## Quand ne pas utiliser ce composant

N'utilisez pas ce composant si votre service n'est pas hébergé sur l'un des domaines ci-dessus.

## Comment ça marche

Dans tous les cas, le logo doit être un lien vers la page d'accueil du site vd.ch

### En-tête par défaut

Utilisez l'en-tête par défaut si votre prestation compte 5 pages ou moins.

{{ '@header-application' | renderComponent | safe }}

### En-tête avec titre

Utilisez l'en-tête avec le nom de la prestation si votre prestation compte plus
de 5 pages. Cela aide les utilisateurs à comprendre quelle prestation ils
utilisent.

Utilisez un titre qui compréhensible par les utilisateurs. Evitez les
dénominations technique.

{{ '@header-application--name' | renderComponent | safe }}

### En-tête avec largeur variable

Si la mise en page le requiert, un en-tête avec largeur variable est disponible

{{ '@header-application--fluid' | renderComponent | safe }}

### En-tête du site vd.ch

vd.ch utilise un en-tête particulier qui lui est réservé.

{{ '@header' | renderComponent | safe }}

