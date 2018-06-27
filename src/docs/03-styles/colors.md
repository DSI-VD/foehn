---
title: Couleurs
label: Couleurs
status: review
---

Utilisez toujours cette palette de couleurs.

## Contrast des couleurs

Vous devez vous assurer que le niveau de contraste du texte et des éléments
interactifs de votre application correspond au niveau AA des [Web Content
Accessibility Guidelines (WCAG)
2.1](https://www.w3.org/WAI/WCAG21/Understanding/contrast-minimum.html).

## Palette

{% for palette, values in colors %}
**{{ palette | capitalize | replace("-", " ") }}** palette values.
{% include "@palette-sample" %}
{% endfor %}

## Couleur officielle

La couleur officielle du Canton de Vaud est `{{ colors.primary.dark }}`
