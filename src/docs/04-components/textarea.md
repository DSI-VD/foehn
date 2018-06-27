---
status: review
---

<div class="foehn-example">
{% render '@textarea', 
  {
    label: "Pouvez-vous fournir plus de détails ?",
    helpText: "Ne saisissez pas d'informations financières, comme des numéros de
      comptes banquaire ou de carte de crédit."
  }, 
  true
%}
</div>

## Quand utiliser ce composant

Utilisez le composant textarea lorsque vous devez laisser les utilisateurs
entrer une quantité de texte plus longue qu'une seule ligne.

## Quand ne pas utiliser ce composant

N'utilisez pas le composant textarea si vous devez autoriser les utilisateurs à
entrer des réponses plus courtes, pas plus d'une seule ligne, comme un numéro de
téléphone ou un nom. Dans ce cas, vous devez utiliser le composant [champs
texte](./text-input).

## Fonctionnement


<div class="foehn-example">
{% render '@textarea', 
  {
    label: "Pouvez-vous fournir plus de détails ?",
    helpText: "Ne saisissez pas d'informations financières, comme des numéros de
      comptes banquaire ou de carte de crédit."
  }, 
  true
%}
</div>

```html
{% render '@textarea', 
  {
    label: "Pouvez-vous fournir plus de détails ?",
    helpText: "Ne saisissez pas d'informations financières, comme des numéros de
      comptes banquaire ou de carte de crédit."
  }, 
  true
%}
```

### Labelisez les zones de texte

Vous devez utilisez un label pour les zones de texte. Le placeholder
n'est pas accepté pour remplacer un label car il disparaît lorsque les
utilisateurs cliquent dans la zone de texte.

Les label doivent être alignés au-dessus de la zone de texte à laquelle ils se
réfèrent. Ils devraient être courts, directs et commencer par une majuscule.
N'utilisez pas de deux-points à la fin des étiquettes.

### Utilizer des zone de texte avec des tailles adaptées

La heuteur des zone de texte doit être proportionnel à la quantité de texte que
les utilisateurs doivent y saisir. Vous pouvez spécifier la hauteur d'une zone
de texte en renseignant l'atribut `rows`.

<div class="foehn-example">
{% render '@textarea', 
  {
    label: "Pouvez-vous fournir plus de détails ?",
    rows: "10",
    helpText: "Ne saisissez pas d'informations financières, comme des numéros de
      comptes banquaire ou de carte de crédit."
  },
  true
%}
</div>

```html
{% render '@textarea', {
    label: "Pouvez-vous fournir plus de détails ?",
    rows: "10",
    helpText: "Ne saisissez pas d'informations financières, comme des numéros de
      comptes banquaire ou de carte de crédit."
  }, 
  true
%}
```

### Ne désactivez pas le copier/coller

Les utilisateurs doivent souvent copier et coller des informations dans une
champs de saisie texte, vous ne devriez donc pas les empêcher de le faire.

