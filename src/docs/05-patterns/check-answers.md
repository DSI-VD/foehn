---
title: "Vérification des réponses"
label: "Vérification des réponses"
status: ready
---

Permet à l'utilisateur de vérifier et de modifier ses réponses avant de soumettre une demande.

{{ '@check-answers-page' | renderComponent | safe }}

## Quand utiliser ce shéma

Pour les transactions de petite à moyenne taille, affichez une page de
vérification de réponses immédiatement avant l'écran de
confirmation 

Lors de la conception d'une transaction très volumineuse comportant plusieurs
sections, il peut être utile d'inclure une page de vérification à la fin de
chaque section.

Cela peut être utile pour les services où différents utilisateurs peuvent
remplir chaque section. Vous devriez tester cette approche avec vos utilisateurs
pour déterminer si elle est utile.

## Comment est-ce que cela fonctionne

Les pages de vérification permettent:

- augmenter la confiance des utilisateurs, car ils peuvent voir clairement
  qu'ils ont rempli toutes les sections et que leurs données ont été saisies
- réduire les taux d'erreur, car les utilisateurs ont une seconde chance de
  remarquer et de corriger les erreurs avant de soumettre leurs données

### Rendre la page compréhensible

Sur la page de vérification, vous devriez:

- indiquer clairement qu'il y a une tâche à effectuer sur la page. Par exemple
  en titrant la page "Vérifiez vos données avant d'envoyer votre demande".
- indiquer clairement que la transaction ne sera pas complète tant que
  l'utilisateur n'aura pas confirmé que ses informations sont correctes
- diviser le contenu en sections lorsque vous le pouvez
- affichez uniquement les sections auxquelles les utilisateurs ont répondu. Par
  exemple, s’ils ont dit venir de Suisse, n’indiquez pas de sections qui
  concerne les personnes ne venant pas de Suisse.
- reformulez les questions si vous en avez besoin. Par exemple, vous n'avez pas
  besoin libeller chaque ligne individuelle d'une adresse et vous pouvez
  reformuler de longues questions de manière plus synthétique
- simplifier les libéllé des réponses si néccéssaire. Par exemple, regrouper les
  différents champs d'une adresse une adresse "rue", "numéro de rue",
  "localité", etc. en un champs unique "adresse".
- assurez-vous que le bouton d'envoi indique clairement l'action qu'il effectue.
  Par exemple, «Modifier les détails de votre compte» ou «Envoyer le formulaire
  de demande»

### Laisser les utilisateurs revenir en arrière et changer leurs réponses

Dans la mesure du possible, vous devez fournir un lien "Modifier" à côté de
chaque réponse afin que les utilisateurs puissent ajouter ou modifier des
informations.

Les pages de saisie de réponses doivent avoir la même apparence que lors de la
dernière utilisation par l'utilisateur, avec toutes leurs réponses préremplies.

Quand ils ont fini, le bouton ‘Continuer’ devrait les ramener à la page de
vérification des réponses. Ils ne devraient pas avoir à passer par le reste de
la transaction.

Si un utilisateur modifie sa réponse de manière à ce que vous deviez lui poser
plus de questions, faites-le avant de le renvoyer à la page de vérification des
réponses.

