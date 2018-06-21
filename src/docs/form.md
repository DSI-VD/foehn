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

# Focus des éléments de formulaire

Tous les éléments utilisent le style de mise en évidence jaune. Cela peut être
au moyen de remplissage ou un contour de 3px.

Cliquez sur le label "Nom complet" ou à l'intérieur du champ de formulaire
pour afficher l'état du focus.

<div class="foehn-example">
{% render '@input--default', {label: "Nom complet"}, true  %}
</div>
