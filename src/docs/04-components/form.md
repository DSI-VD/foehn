---
title: Formulaires
label: Formulaires
status: draft
---

## Champs optionnels et obligatoires

- demander uniquement les informations nécessaires
- si vous demandez des information optionnel, indiquez dans le label du champs
  avec "(optionnel)".
- ne marquez pas les champs obligatoires avec un astérisque

## Labels

- tous les champs doivent avoir un label
- ne cachez pas les label, sauf si le context les rends optionnel
- les labels doivent être aligné au-dessus du champs correspondant
- les label doivent être court, direct et en minuscule excepté la première lettre
- évitez les ponctuation à la fin des labels
- les labels doivent associés avec le champs au moyen de l'attribut `for`

<div class="foehn-example">
{% render '@input--default' %}
</div>

```html
{% render '@input--default' %}
```

## Champs de saisie

- rendre les largeurs de champ proportionnelles à l'information saisie
- s'assurez que l'information peut être saisie sur les écran de petite taille
- ajuster la largeur des champs à 100% sur les petits écrans

## Textarea

La hauteur d'une zone de texte doit être proportionnel au contenu qui doit y
être saisi.

<div class="foehn-example">
{% render '@textarea' %}
</div>

```html
{% render '@textarea' %}
```

## Focus des éléments de formulaire

Tous les éléments utilisent le style de mise en évidence jaune. Cela peut être
au moyen de remplissage ou un contour de 3px.

Cliquez sur le label "Nom complet" ou à l'intérieur du champ de formulaire
pour afficher l'état du focus.

<div class="foehn-example">
{% render '@input--default', {label: "Nom complet"}, true  %}
</div>

## Text d'aide

- n'utilisez pas de placeholder dans les champs de formulaire, car celui-ci disparaîtra une fois que le contenu sera saisi
- utiliser un texte d'aide pour prendre en charge l'aide contextuelle, il sera toujours affiché
- le texte d'aide doit être placé au-dessus d'un champ de formulaire
- assurez-vous que le texte d'aide peut être lu correctement par les lecteurs d'écran

<div class="foehn-example">
{% render '@input--help-text', {label: "Couriel"}, true %}
</div>

```html
{% render '@input--help-text', {label: "Couriel"}, true %}
```

## Espacement entre les éléments

S'assurez qu'il y ai assez d'espace entre les éléments.

<div class="foehn-example">
{% render '@input--default', {label: "Nom"}, true  %}
{% render '@input--default', {label: "Prénom"}, true  %}
</div>

```html
{% render '@input--default', {label: "Nom"}, true  %}
{% render '@input--default', {label: "Prénom"}, true  %}
```

## Téléversement de fichiers

Un élément qui permet aux utilisateurs de sélectionner un fichier

<div class="foehn-example">
{% render '@input--file' %}
</div>

```html
{% render '@input--file' %}
```

Nous vous recommandons d'utiliser le champs de saisie natif `type="file"` plutôt
qu'une implémentation personnalisé.

De cette manière:

- l'élément est mis en évidence (focus) lors de la tabulation dans la page
- l'élément est contrôlable au clavier
- l'élément est contrôlable par les technologie d'assistance
- l'élément fonctionne lorsque le javascript n'est pas activé

Une implémentation personnalisée devra remplir les critères ci-dessus.

## Ensemble de champs et légende

Utilisez les ensembles de champs `fieldset` pour grouper les contrôles de
formulaire associés. Le premier élément à l'intérieur d'un `fieldset` doit être
un élément `legende` qui décrit le groupe.

Tout texte qui est important pour remplir le formulaire et qui ne peut pas être
mis dans un text d'aide, devrait être dans cette légende (comme indiqué dans
l'exemple de case à cocher). Mais la légende ne devrait pas être trop longue non
plus.

## Liste de sélection

Dans la mesure du possible évitez d'utiliser des listes de sélection `select`.
Utilisez des boutons radio à la place.

<div class="foehn-example">
{% render '@select--default' %}
</div>

```html
{% render '@select--default' %}
```

## Boutons radio

- utilisez-les pour permettre aux utilisateurs de choisir une seule option parmi une liste
- pour plus de deux options, les boutons radio doivent être positionné verticalement
- les boutons radio avec de grandes zones actives sont plus faciles à sélectionner avec une souris ou des dispositifs tactiles

### Boutons radio horizontaux

<div class="foehn-example">
{% render '@fieldset--yes-or-no' %}
</div>

```html
{% render '@fieldset--yes-or-no' %}
```

### Boutons radio verticaux

<div class="foehn-example">
{% render '@fieldset--default' %}
</div>

```html
{% render '@fieldset--default' %}
```

### Bouton radio inactif

<div class="foehn-example">
{% render '@radio--disabled-option' %}
</div>

```html
{% render '@radio--disabled-option' %}
```

## Cases à cocher

- utilisez-les pour les sélections on / off ou les sélections multiples
- utiliser des mots pour que les utilisateurs comprennent clairement s'ils peuvent sélectionner une ou plusieurs options

### Cases à cocher verticales

<div class="foehn-example">
{% render '@fieldset--checkbox', 
  {
    legend: "Quelle est votre canton d'origine ?", 
    items:[
      {
        label: "Vaud",
        name: "vaud"
      },
      {
        label: "Valais",
        name: "valais"
      },
      {
        label: "Fribourg",
        name: "fribourg"
      },
      {
        label: "Autre canton",
        name: "other",
        disabled: false
      }
    ]
  },
  true %}
</div>

```html
{% render '@fieldset--checkbox' %}
```

### Case à cocher inactive

<div class="foehn-example">
{% render '@checkbox--disabled' %}
</div>

```html
{% render '@checkbox--disabled' %}
```
