---
title: "Demander un numéro de téléphone"
label: "Numéro de téléphone"
status: wip
---

## Quand utiliser ce schéma

Ne collectez les numéros de téléphone des personnes que si vous en avez
réellement besoin (voir [la documentation relative à la protection des
données](/docs/get-started/protection-des-donnees)). Tout le monde n’a pas ou ne
peut pas utiliser un téléphone, alors assurez-vous de laisser aux utilisateurs
le choix de la manière avec laquelle l'administration peut les contacter.

## Comment ça marche 

### Autoriser différents formats

Les utilisateurs devraient être autorisés à entrer les numéros de téléphone dans
le format qui leur est familier. Il faut prévoir la saisie d'espaces, de tirets,
de crochets et des parenthèses supplémentaires, et pouvoir prendre en charge les
indicatifs de pays et de zone.

### Valider les numéros de téléphone

Vous devez valider les numéros de téléphone afin de permettre aux utilisateurs
de savoir s’ils ont saisi correctement.

### Utilisez l'attribut autocomplete

Utilisez l'attribut `autocomplete` sur les entrées de numéro de téléphone. Cela
permet aux navigateurs de saisir automatiquement les informations d’un
utilisateur s’il les a déjà saisies.

Pour ce faire, définissez l'attribut `autocomplete` avec la valeur `tel`.

## Message d'erreur

Les messages d'erreur doivent être stylés comme ci-dessous:

{{ '@input--phone-error' | renderComponent }}

Assurez-vous que les erreurs suivent les instructions fournies dans [la
documentation des messages d'erreur](../components/error-message) et ont des
messages spécifiques à chaque type d'erreur.

Assurez-vous que les messages d'erreur soient spécifiques au type d'erreur. (par
exemple: "Entrez un numéro de téléphone suisse")

### Si le numéro de téléphone n'est pas dans le bon format et qu'il n'y a pas d'exemple

Afficher le message "Entrez un numéro de téléphone, par exemple 024 123 45 67,
079 123 45 67 ou +41 24 123 45 67".

### Si le numéro de téléphone n’est pas dans le bon format et qu’il existe un exemple

Affichez le message "Entrez un numéro de téléphone dans le format correct".

## Soyez clair sur le type de numéro de téléphone que vous voulez

Utilisez le label ou le texte d'aide pour informer l'utilisateur que vous avez
besoin d'un numéro suisse, international ou un numéro de téléphone mobile.

<div class="foehn-example"> {% render '@input--default', {label: "Téléphone",
helpText: "Pour les numéro internationaux, inclure le code du pays"}, true %}
</div>

## Utiliser des exemples de numéros de téléphone

Si vous désirez des numéros à utiliser comme exemple (par exemple dans les
textes d'aide). Utilisez les numéros suivants:

- Numéro local: 021 123 45 67
- Numéro international: +41 21 123 45 67
- Numéro de téléphone mobile: 079 123 45 67

## Éviter d'utiliser des masques de saisie

Évitez [les masques de saisie](https://css-tricks.com/input-masking/), car il
est plus difficile pour les utilisateurs de:

- taper un nombre de la manière qu'ils préfèrent
- transcrire un numéro étranger et être certain de l'avoir correctement saisie

## Expliquez pourquoi vous avez besoin d'un numéro de téléphone

Indiquez aux utilisateurs pourquoi et quand vous allez les contacter.

## Ne pas afficher les numéros de téléphone comme des liens sur les appareils ne
pouvant pas effectuer d'appel

Il est possible de baliser les numéros de téléphone comme ci-dessous:

```
<a href="tel:+41211234567>021 123 45 67</a> 
```

Cependant, cela affichera le numéro de téléphone sous forme de lien. Cela porte
à confusion sur les appareils qui ne prennent pas en charge les appels
téléphoniques comme la plupart des ordinateurs de bureau.

De plus, cela n'est pas nécessaire. La plupart des navigateurs mobiles modernes
détectent automatiquement les numéros de téléphone et les affichent comme des
liens.

Si vous devez baliser un numéro de téléphone en tant que liens, par exemple,
pour prendre en charge un appareil ne pouvant pas les détecter automatiquement,
assurez-vous qu'ils ne s'affichent pas en tant que liens sur des appareils ne
pouvant pas faire d'appel.

## Comment écrire les numéros de téléphone

Le format international est à privilégier: +41 21 123 45 67

Utilser des espaces pour séparer les groupes de chiffre: 
- +41 21 123 45 67
- 021 123 45 67
- 079 13 45 67

Si un numéro de téléphone est facilement mémorisable, grouper les chiffres en
groupes faciles à retenir: 0800 11 22 33
