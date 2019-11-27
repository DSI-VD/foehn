---
status: wip
label: Fil d'Ariane
---

Le composant "fil d’Ariane" aide les utilisateurs à se situer dans la structure
d’un site Web et à naviguer d’un niveau à l’autre.

Lors des tests utilisateurs, nous avons remarqué que le fils d'Ariane est
fortement utilisé pour naviguer dans le site, lorsque le système de sous page
est développé.

{{ '@breadcrumb' | renderComponent | safe }}

## Quand utiliser ce composant

Utilisez le composant de fil d’Ariane lorsque vous avez besoin d’aider les
utilisateurs à comprendre et à naviguer entre les multiples niveaux d’un site
Web.

## Quand ne pas utiliser ce composant

N’utilisez pas le composant de fil d’Ariane sur des sites Web à structure plate,
ni pour montrer les progrès réalisés au cours d’un parcours ou d’une transaction
linéaire.

Si vous utilisez d’autres éléments de navigation sur la page, tels qu’une barre
latérale, déterminez si vos utilisateurs ont besoin du fil d’Ariane comme aide
supplémentaire.

## Comment ça marche

Le dernier niveau affiché dans le fil d'Ariane est la page parente de la page courante. Cependant, pour des questions d'accessibilité, la page courante est présente dans le code HTML du composant, mais est cachée afin d'éviter une redondance visuelle avec le titre de la page.

## Cas particuliers

### Prestations accédées depuis l'espace sécurisé

Dans le cas où un utilisateur est connecté à son espace sécurisé, le fil
d'Ariane doit se composer comme suit: `Mon espace > Accéder aux prestations > Nom
de la prestation > Page en cours`.

1. "Mon espace" redirige vers l'espace personnel de la personne connectée
1. "Accéder aux prestations" redirige vers la liste des prestations disponible
   pour la personne connectée
1. "Nom de la prestation" redirige vers le descriptif de la prestation qui se
   trouve sur vd.ch (exemple: [Demander un extrait du registre des poursuites
   pour
   soi-même](https://www.vd.ch/prestation-detail/prestation/demander-un-extrait-du-registre-des-poursuites-pour-soi-meme/))
1. "Page en cours" donne le titre de la page sur laquelle l'utilisateur se
   trouve. Ce texte est rendu invisible afin d'éviter une redondance avec le
   titre de la page.

### Prestation accédées depuis vd.ch

Le fil d'Ariane suit les règles en vigueur pour vd.ch.

Exemple: `vd.ch > Mobilité > Automobile > Demander un extrait du registre des
poursuites pour soi-même `

