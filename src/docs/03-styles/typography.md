---
title: Typographie
label: Typographie
status: ready
---

## Polices

Si vos interfaces utilises le domaine vd.ch, vous devez utiliser [Open
Sans](https://fonts.google.com/specimen/Open+Sans) pour les corps de texte et
[Robotto Slab](https://fonts.google.com/specimen/Roboto+Slab) pour les titres.

## Titres

Utilisez [les éléments de
titre](https://developer.mozilla.org/fr/docs/Web/HTML/Element/Heading_Elements)
de manière cohérente pour créer une hiérarchie claire sur l'ensemble de vos
pages.

Marquez les en-têtes sémantiquement à l'aide de l'élément HTML approprié (de
`<h1>` à `<h6>`) et utilisez la classe d'en-tête correspondante pour appliquer
le style Foehn.

Ecrivez les titres en minuscule sauf la première lettre.

{{ '@headings-list' | renderComponent | safe }}

## Paragraphes

### Corps de texte

La taille par défaut des paragraphes est 16px.

{{ '@paragraph' | renderComponent | safe }}

Il est possible de créer des paragraphes d'en-tête ou des textes en petit afin
de renforcer la hiérarchie dans votre page.

### En-tête ou chapeau

Un paragraphe d'en tête (ou chapeau) est un paragraphe d'introduction que vous pouvez utiliser
en haut de page pour résumer le contenu. Les en-têtes ont une taille de 20px.
Elle ne doivent être utilisées qu'une fois par page si nécessaire.

{{ '@lead' | renderComponent | safe }}

### Corps de texte petit

Vous pouvez utiliser la classe `small` avec parcimonie pour réduire la taille de
la police de votre paragraphe.

La majorité de votre corps de texte devrait utiliser la taille de paragraphe
standard.

{{ '@small--utilitie' | renderComponent | safe }}

## Classes de surcharge de style

Vous devrez peut-être définir une autre taille ou épaisseur de police d'un
élément que celles prédéfinies par par les éléments de paragraphe ou de titre.
Pour cela, vous pouvez utiliser les classes de surcharge dans votre code HTML.

### Taille du texte

Vous pouvez ajouter les classes ci-dessous afin de surcherger les styles de
texte.
- `h1`
- `h2`
- `h3`
- `h4`
- `h5`
- `h6`
- `p`

```html
<span class="h2">This text will looks like an h2</span>
```

### Graisse du texte

Comme pour la taille de la police, vous pouvez ajouter une classe afin de
modifier la graisse entre normal ou gras à n'importe quel élément typographique.

```html
<p class="font-weight-bold">Bold text.</p>
<p class="font-weight-normal">Normal weight text.</p>
```

#### Text en gras

Vous pouvez utiliser des caractères gras pour souligner des mots particuliers
dans une transaction. Utilisez-le pour mettre en évidence les informations
critiques auxquelles les utilisateurs doivent se référer ou qu'ils pouraient
manquer.

Par exemple, "Votre numéro de référence est **ABC12345678**. Utilisez-le pour
suivre votre demande. Les mises à jour seront envoyées à
**this.person@email.com**“

Utilisez le gras avec parcimonie. Une utilisation abusive empêchera les
utilisateurs de savoir quelle partie du contenu est importante.

## Liens

Les liens sont verts et soulignés par défaut. Si votre lien se trouve à la fin
d'une phrase, assurez-vous que le point de fin de phrase ne soit pas inclus dans
le lien.

{{ '@link' | renderComponent | safe }}

## Listes

Utilisez des listes pour rendre plus aisé la lecture des blocs de texte et diviser les
informations en fragments plus facilement compréhensibles.

{{ '@list--unstyled' | renderComponent | safe }}

### Listes à puces

Introduisez les listes à puces avec une phrase se terminant par deux-points.
Commencez chaque élément par une lettre minuscule et n'utilisez pas
un point final.

{{ '@list--default' | renderComponent | safe }}

### Listes numérotées

Utilisez des listes numérotées au lieu de listes à puces lorsque l'ordre des
éléments est pertinent.

Vous n'avez pas besoin d'utiliser une phrase d'introduction pour les listes
numérotées. Les éléments d'une liste numérotée doivent se terminer par un point
car ils doivent constituer une phrase complète.

{{ '@list--ordered' | renderComponent | safe }}

## Saut de section

Vous pouvez utiliser un séparateur `<hr>` pour
créer une rupture thématique entre des sections de contenu. 

{{ '@separator--default' | renderComponent | safe }}
