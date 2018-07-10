---
status: wip
---

## Taille d'écran

Concevoir d'abord pour les petits écrans en utilisant une disposition à une
seule colonne.

Ne faites pas d'hypothèses sur les appareils que les gens utilisent. Concevez
pour différentes tailles d'écran plutôt que des dispositifs spécifiques.

La largeur de page maximale par défaut est 1140px, mais vous pouvez la rendre
plus large si votre contenu l'exige.

## Mise en page habituelle

### Deux tiers - un tiers

```html
<main class="container">
  <h1>Page title</h1>
  <div class="row">
    <div class="col-md-8">
      <h2>Deux tiers</h2>
      <p>Ce paragraphe est dans une colonne d'une largeur de deux tiers.</p>
    </div>
    <div class="col-md-4">
      <h2>Un tiers</h2>
      <p>Ce paragraphe est dans une colonne d'une largeur d'un tiers.</p>
    </div>
  </div>
</main>
```
<div class="foehn-example">
<main class="container">
  <h1>Page title</h1>
  <div class="row">
    <div class="col-md-8">
      <h2>Deux tiers</h2>
      <p>Ce paragraphe est dans une colonne d'une largeur de deux tiers.</p>
    </div>
    <div class="col-md-4">
      <h2>Un tiers</h2>
      <p>Ce paragraphe est dans une colonne d'une largeur d'un tiers.</p>
    </div>
  </div>
</main>
</div>

## Composer sa propore mise en page

Si vous desirez construire votre propre mise en page, le système de grille se
base sur Bootstrap 4. Vous pouvez vous [y
référer](https://getbootstrap.com/docs/4.1/layout/overview/).

