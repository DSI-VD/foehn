---
title: "Demander un numéro de téléphone"
label: "Numéro de téléphone"
status: wip
---

{{ '@input--phone' | renderComponent }}

## Quand utiliser ce shéma

Ne collectez les numéros de téléphone des personnes que si vous en avez
réellement besoin (voir [la documentation relative à la protextion des
données](/docs/get-started/protection-des-donnees)). Tout le monde n’a pas ou ne
peut pas utiliser un téléphone, alors assurez-vous de laisser aux utilisateurs
le choix de la manière dont ils peuvent être contactés.

## Comment ça marche 

### Autoriser différents formats

Les utilisateurs devraient être autorisés à entrer les numéros de téléphone dans
le format qui leur est familier. Vous devez prévoir des espaces, des tirets, des
crochets et des tirets supplémentaires, et pouvoir prendre en charge les
indicatifs de pays et de zone.

### Valider les numéros de téléphone

Vous devez valider les numéros de téléphone afin de permettre aux utilisateurs
de savoir s’ils en ont mal saisi.

### Utilisez l'attribut autocomplete

Utilisez l'attribut `autocomplete` sur les entrées de numéro de téléphone. Cela
permet aux navigateurs de saisir automatiquement les informations d’un
utilisateur s’il les a déjà saisies.

Pour ce faire, définissez l'attribut `autocomplete` sur `tel`.

## Message d'erreur

Les messages d'erreur doivent être stylé comme ci-dessous:


{{ '@input--phone-error' | renderComponent }}

Assurez-vous que les erreurs suivent les instructions fournies dans le message d'erreur et ont des messages d'erreur spécifiques pour des états d'erreur spécifiques.

### Si le numéro de téléphone n'est pas dans le bon format et qu'il n'y a pas d'exemple

Afficher le message "Entrez un numéro de téléphone, par exemple 024 123 45 67, 079 123 45 67 ou +41 24 123 45 67".

### Si le numéro de téléphone n’est pas dans le bon format et qu’il existe un exemple

Affichez le message "Entrez un numéro de téléphone au format correct".
