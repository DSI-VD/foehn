---
status: wip
---

Évitez la décoration inutile. N'utilisez les images que si elles rebondent à un
réel besoin pour les utilisateur.

## Ratio

### Photographie

Le ratio pour les photographies doit être de 3/2.

<div class="foehn-example">
{% render '@image--fluid' %}
</div>

### Illustrations ou images représentatives

Si votre image représente un objet physique, comme une lettre, un document ou
une carte de crédit, vous devez utiliser les proportions de cet élément.  

### Text alternatif

<div class="foehn-example">
<p>Merci de nous renvoyer le formulaire.</p>
<img src="{{ '/assets/img/a4-document.gif'| path }}" alt="Une illustration du
formualaire">
</div>

### Texte alternatif

Toutes les images doivent avoir une attribut `alt`. Vous devez inclure une
description de l'image dans la balise pour aider les utilisateurs qui ne peuvent
pas la voir.

<div class="foehn-example">
{% render '@image--fluid', {src: "../../assets/img/vevey-vapeur.jpg", 
alt: "Le bateau à vapeur Vevey sur le lac Léman"} %}
</div>

```html
{% render '@image--fluid', {src: "../../assets/img/vevey-vapeur.jpg", alt: "Le
bateau à vapeur Vevey sur le lac Léman"} %}
```

Si votre image est purement décorative et qu'une description pourrait prêter à
confusion, vous devez toujours inclure l'attribut `alt`, mais laissez-la vide 
pour qu'elle soit ignorée par les lecteurs d'écran.

