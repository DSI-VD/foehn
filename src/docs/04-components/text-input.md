---
title: Champs texte
label: Champs texte
status: review
---

{{ '@input--default' | renderComponent | safe }}

## Quand utiliser ce composant

Utilisez le composant de saisie de texte lorsque les utilisateurs doivent saisir
du texte ne comportant pas plus d'une ligne, comme leur nom ou leur numéro de
téléphone.

## Quand ne pas utiliser ce composant

N'utilisez pas le composant de saisie de texte si vous devez laisser les
utilisateurs entrer des réponses plus longues pouvant s'étendre sur plusieurs
lignes. Dans ce cas, vous devez utiliser le composant [textarea](./textarea).

## Fonctionnement

{{ '@input--default' | renderComponent | safe }}

```html
{% render '@input--default' %}
```

### Labelisez les entrées de texte

Toutes les entrées de texte doivent avoir des label visibles; le placeholder
n'est pas accepté pour remplacer un label car il disparaît lorsque les
utilisateurs cliquent sur le champs texte.

Les label doivent être alignés au-dessus du champs texte auxquel elles se
réfèrent. Ils devraient être courts, directs et commencer par une majuscule.
N'utilisez pas de deux-points à la fin des étiquettes.  

### la taille des champs texte doit être adapté

Aidez les utilisateurs à comprendre ce qu'ils doivent entrer en faisant en sorte
que les entrées de texte soient de la bonne taille pour le contenu pour lequel
elles sont destinées.

Par défaut, la largeur des entrées de texte est fluide et correspond à la
largeur totale du conteneur dans lequel elles sont placées.

Si vous souhaitez réduire l'entrée, vous pouvez utiliser une entrée de largeur
fixe ou utiliser les classes de remplacement de largeur pour créer une entrée de
largeur de fluide plus petite.

#### Entrées de largeur fixe

Utilisez des entrées de largeur fixe pour le contenu ayant une longueur
connue. Les champs pour un code postale ou un numéro de téléphone doivent avoir
une taille adaptée.

Sur les entrées à largeur fixe, la largeur restera fixe sur tous les écrans sauf
si elle est plus large que la fenêtre, auquel cas elle rétrécira pour s'adapter.

### Text d'aide

Utilisez un texte d'aide qui est pertinent pour la majorité des utilisateurs -
par exemple, comment leurs informations seront utilisées ou où les trouver.

{{ '@input--help-text' | renderComponent | safe }}

```html
{% render '@input--help-text', {label: "Couriel"}, true %}
```

### Ne désactivez pas le copier/coller

Les utilisateurs doivent souvent copier et coller des informations dans une
champs de saisie texte, vous ne devriez donc pas les empêcher de le faire.

