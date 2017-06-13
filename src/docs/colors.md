---
title: "Colors"
label: "Colors"
---

{% for palette, values in colors %}
**{{ palette | capitalize | replace("-", " ") }}** palette values.
{% include "@palette-sample" %}
{% endfor %}
