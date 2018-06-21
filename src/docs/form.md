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

