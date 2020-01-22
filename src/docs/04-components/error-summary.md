---
title: "Récapitulatif des erreurs"
label: "Récapitulatif des erreurs"
status: ready
---

Utilisez ce composant en haut d'une page pour récapituler les erreurs qu'un
utilisateur a commises.

Lorsqu'un utilisateur commet une erreur, vous devez afficher un récapitulatif
d'erreur et un [message d'erreur](error-message) à côté de chaque réponse
contenant une erreur.

{{ '@error-summary' | renderComponent | safe }}

## Quand utiliser ce composant

Toujours afficher un résumé des erreurs en cas d’erreur de validation, même s’il
n’y en a qu’une.

Vous devez:

- ajoutez «Erreur:» au début du `<title>` pour que les lecteurs d’écran le
  lisent dès que possible
- afficher un résumé des erreurs en haut d'une page
- déplace le focus du clavier sur le récapitulatif des erreurs
- inclure l'en-tête "Il y a un problème"
- faire un lien du récapitulatif vers chacune des réponses comportant des
  erreurs de validation
- affiche les mêmes messages d'erreur que sur les champs avec des erreurs

Lisez [les instructions pour écrire de bons messages d'erreur](error-message).

{{ '@error-summary' | renderComponent | safe }}

## Créer un lien du récaptulatif vers chaques réponse incorrectes

Vous devez lier les erreurs du récapitulatif aux champs auxquels elles se
rapportent.

Pour les questions qui nécéssitent que l’utilisateur réponde à un seul champ,
comme un téléchargement de fichier, une sélection, une zone de texte, une entrée
de texte ou un nombre de caractères, faites un lien vers le champ.

[Exemple de lien depuis une résumé d'erreur vers un champs unique (GOV.uk design
system)](https://design-system.service.gov.uk/components/error-summary/linking/index.html#name)

Lorsqu'un utilisateur doit entrer sa réponse dans plusieurs champs, tels que les
champs jour, mois et année dans un composant de saisie de la date, faites un
lien vers le premier champ contenant une erreur.

Si vous ne savez pas quel champ contient une erreur, faites un lien vers le
premier champ.

[Exemple de lien depuis un résumé d'erreur vers une réponse à plusieurs champs
(GOV.uk design
system)](https://design-system.service.gov.uk/components/error-summary/linking-multiple-fields/index.html)

Pour les questions qui nécessitent que l'utilisateur sélectionne une ou
plusieurs options dans une liste à l'aide de boutons radios ou de cases à
cocher, faites un lien vers le premier bouton radio ou case à cocher.

[Exemple de lien depuis un résumé d'erreur vers une des cases à cocher (GOV.uk
design system (GOV.uk design
system)](https://design-system.service.gov.uk/components/error-summary/linking-checkboxes-radios/index.html)

## Où placer le récapitulatif des erreurs

Placez le récapitulatif des erreurs au début du conteneur `<main>` juste après
le `<h1>`.

