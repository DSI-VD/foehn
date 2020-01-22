---
title: "Messages d'erreurs"
label: "Messages d'erreurs"
status: wip
---

Utilisez un message d'erreur en cas d'erreur de validation. Expliquez ce qui
s'est mal passé et comment y remédier.

{{ '@dates--danger' | renderComponent | safe }}

## Quand utiliser ce composant

Lorsque'il faut afficher un message d'erreur à côté du champ et dans le
[récapitulatif des erreurs](error-summary/) en cas d'erreur de validation.

Utilisez des messages standard pour différents composants.

Essayez de concevoir votre prestation ou formulaire de manière à ce qu'il soit
facile à utiliser et à comprendre afin que personne ne voie un message d'erreur
.

## Quand ne pas utiliser ce composant

Afficher une erreur uniquement lorsque quelqu'un tente de passer à la partie
suivante du service. Ne pas afficher les messages d'erreur:

- lorsque les utilisateurs sélectionnent ou tabulent vers un champ
- lorsqu'ils saisissent des caractères
- quand ils sortent d'un champ

N'utilisez pas de messages d'erreur pour indiquer aux utilisateurs qu'ils ne
sont pas éligibles ou qu'ils n'ont pas la permission de faire quelque chose. Au
lieu de cela, amenez-les sur un écran qui:

- explique pourquoi nous ne pouvons pas accepter la saisie ou la sélection
- leur dit quoi faire ensuite
- contient un moyen de quitter la transaction

## Fonctionnement

Pour chaque erreur:

- mettre le message en rouge après le texte de la question et avant le texte
  d'aide
- utilisez une bordure rouge pour connecter visuellement le message et la
  question à laquelle il appartient
- si l'erreur concerne des champs de texte spécifiques dans la question,
  indiquez-les également par une bordure rouge

Pour aider les utilisateurs de lecteur d'écran, le composant de message d'erreur
inclut un «Erreur:» masqué avant le message d'erreur. Ces utilisateurs
entendront, par exemple, «Erreur: la date à laquelle votre passeport a été
délivré doit être dans le passé».

Si votre message d'erreur est écrit dans une autre langue, vous pouvez modifier
le préfixe en fonction des besoins, comme indiqué dans cet exemple.

Résumez toutes les erreurs en haut de la page sur laquelle l'utilisateur se
trouve à l'aide d'un [récapitulatif des erreurs](error-summary).

### Légende

{{ '@fieldset--checkbox-error' | renderComponent | safe }}

### Label

{{ '@input--help-error' | renderComponent | safe }}

### Soyez clair et concis

Décrivez ce qui s'est passé et dites-leur comment y remédier. Le message doit
être rédigé en français clair, utiliser un langage positif et aller droit au
but.

Ne pas utiliser:

- jargon technique tel que 'erreur de formulaire', 'erreur non spécifiée' et
  'erreur 0x0000000643'
- des mots comme «interdit», «illégal», «vous avez oublié» et «interdit»
- 's'il vous plaît' car cela implique un choix
- 'désolé' car cela n'aide pas à résoudre le problème
- 'valide' et 'invalide' car ils n'ajoutent rien au message
- humour, langage informel comme 'oups' 

Ne donnez pas d'exemple dans le message d'erreur s'il y a un exemple à l'écran.
Par exemple, si vous demandez un numéro d'AVS et que vous incluez 'CH 756 1234
5678 97' comme indice, n'incluez pas d'exemple dans le message d'erreur.

Avant toute chose, visez la clarté.

Lisez le message à voix haute pour voir si cela ressemble à quelque chose que
vous diriez.

### Être cohérent

Utilisez le même message à côté du champ et dans le récapitulatif des erreurs
pour qu'ils:

- ressemble, sonne et signifie la même chose
- donner un sens hors contexte
- réduire l'effort cognitif nécessaire pour comprendre ce qui s'est passé

Utilisez le label de la question ou du formulaire en erreur pour fournir un
contexte. Par exemple, "Entrez combien d'heures vous travaillez par semaine"
pour "Combien d'heures travaillez-vous par semaine ?"

### Être spécifique

Les message d'erreurs trop généraux n'aident personne. Ils n'ont pas de sens
hors contexte. Évitez les messages tels que:

- 'Une erreur est survenue'
- 'Répondre à la question'
- 'Sélectionner une option'
- 'Remplissez le champ'
- 'Ce champ est requis'

Chaque type d'erreur nécessite un message particulier. Par exemple, les champs
de texte peuvent être:

- vide
- trop long
- trop court
- en utilisant des caractères qui ne sont pas autorisés
- dans le mauvais format

Une message d'erreur pour une situation spécifique est plus utile. Il informera
l'utilisateur sur ce qui s'est passé et comment y remédier.

### Utiliser des instructions et des descriptions

Certains messages d'erreurs fonctionnent mieux lorsque lorsqu'ils sont formulés
en instructions et d’autres en descriptions. Par exemple:

- 'Entrez votre prénom' est plus clair, plus direct et naturel que 'Le prénom
  doit avoir une entrée'
- 'Entrez un prénom de 35 caractères ou moins' est plus verbeux, moins direct et
  naturel que 'Le prénom doit comporter 35 caractères ou moins'
- 'Entrez une date après le 31 août 2017 pour le début du cours' est plus
  précis, moins direct et naturel que 'La date à laquelle vous avez commencé le
  cours doit être après le 31 août 2017' 

Utilisez des instructions et des descriptions, mais utilisez-les de manière
cohérente. Par exemple, utilisez une instruction pour les champs vides telle que
"Entrez votre nom", mais une description telle que "Le nom doit comporter 35
caractères ou moins" pour les entrées trop longues. 

### Utiliser des modèles de message d'erreur

Utilisez des modèles de messages pour les erreurs courantes sur:

- adresses (en cours de rédaction)
- nombre de caractères (en cours de rédaction)
- cases à cocher (en cours de rédaction)
- entrée de date (en cours de rédaction)
- Rendez-vous (en cours de rédaction)
- groupe ethnique (en cours de rédaction)
- adresse e-mail (en cours de rédaction)
- téléchargement de fichiers (en cours de rédaction)
- noms (en cours de rédaction)
- Numéros d'assurance nationale (en cours de rédaction)
- radios (en cours de rédaction)
- numéros de téléphone (en cours de rédaction)
- saisie de texte
- textarea (en cours de rédaction)

### Monitorez les erreurs

Découvrez à quelle fréquence les gens les voient. Cela vous permettra de:

- améliorer le contenu
- faire des variotion dans le "A/B testing"
- améliorer le processus
