---
title: "Colors"
label: "Colors"
---

{% for palette, values in colors %}
**{{ palette | capitalize | replace("-", " ") }}** palette values.
{% include "@palette-sample" %}
{% endfor %}

## Couleur officielle

La couleur officielle du Canton de Vaud est `{{ colors.primary.dark }}`
