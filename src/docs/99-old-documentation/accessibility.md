---
status: draft
---

## Introduction


Selon l'article 10 de la Constitution du Canton de Vaud nul ne doit subir de 
discrimination.

> Nul ne doit subir de discrimination du fait notamment de son origine, de son 
sexe, de son âge, de sa langue, de sa situation sociale, de son état civil, de 
son mode de vie, de son patrimoine génétique, de son aspect physique, de son 
handicap, de ses convictions ou de ses opinions.
— [Art. 10 de la Constitution du Canton de Vaud](https://www.admin.ch/opc/fr/classified-compilation/20030172/index.html#a10)

Le Canton de Vaud s'aligne sur [les exigences de la confédération](https://www.edi.admin.ch/edi/fr/home/fachstellen/bfeh/themes-de-l-egalite/communication/rechtliche-grundlagen.html) en terme d'accessibilité. De ce fait, il applique les textes suivants

> Art. 10 Prestations sur Internet
L'information et les prestations de communication ou de transaction proposées sur Internet doivent être accessibles aux personnes handicapées de la parole, de l'ouïe, de la vue ou handicapées moteur. A cet effet, les sites doivent être aménagés conformément aux standards informatiques internationaux, notamment aux directives régissant l'accessibilité des pages Internet, édictées par le Consortium World Wide Web (W3C) et, subsidiairement, aux standards nationaux.
— [Art. 10 Prestations sur Internet, Ordonnance sur l'élimination des inégalités frappant les personnes handicapées](https://www.admin.ch/opc/fr/classified-compilation/20031813/index.html#a10)

> Dans la mesure où les autorités offrent leurs prestations sur Internet, l'accès à ces prestations ne doit pas être rendu difficile aux handicapés de la vue. Le Conseil fédéral édicte les prescriptions techniques nécessaires. Il peut déclarer obligatoires des normes techniques établies par des organisations privées.
— [Art. 14 Mesures en faveur des personnes handicapées de la parole, de l'ouïe ou de la vue, Loi fédérale sur l'élimination des inégalités frappant les personnes handicapées (LHAND)](https://www.admin.ch/opc/fr/classified-compilation/20002658/index.html#a14)

La directive [P028 – Directives de la Confédération pour l’aménagement de sites Internet facilement accessibles](https://www.isb.admin.ch/isb/fr/home/ikt-vorgaben/prozesse-methoden/p028-richtlinien_bund_gestaltung_barrierefreie_internetangebote.html) est appliquée et de ce fait **tous les sites Internet du Canton de Vaud doivent répondre aux exigences de conformité des directives [WCAG 2.1](https://www.w3.org/TR/WCAG21/) et atteindre le niveau de conformité AA**.

Refer to [Bootstrap 4 documentation](http://v4-alpha.getbootstrap.com/getting-started/accessibility/) for precise information about how the framework should be used.

## Accessibility navigation

We have a navigation with accesskeys to key elements on the page that should be placed at the top of the document: the **Access Nav Component**. Please refer to the page itself for more info on how to implement it.

It lists different part of the website:

1. **Homepage**: link that should go to the homepage itself
2. **Page navigation**: anchor that should focus on the main navigation of the current page
3. **Start of content**: anchor that should focus on the `<main id="main">` element containing all the meaningful content of the current page
4. **Sitemap**: link that should go to the sitemap page
5. **Access to the search**: anchor that should focus the search form of the current page
6. **Access to the thematic index**: link that should go to the Themes Index page
7. **Access to the Authorities navigation**: link that should go to the Authorities page
8. **Help for people with disabilities**: link that should go to the help page for people with disabilities

## Markup

All pages should contain:

- Meaningful and logical headings (h1, h2, ...)
- A `<main id="main">` region wrapping the **content of the page**, not including all sidebars or aside contents (like news teasers, etc)
- `aria-hidden="true"` on all icons that are just here for decoration
- `<span class="sr-only">Explanation</span>` for all elements that need explanation (icons, etc)
- A clear indication of the current page in the **navbar** and in the **breadcrumb**

## Browsers support

The styleguide uses Bootstrap 4, which is supporting all recent browsers ([see documentation](http://v4-alpha.getbootstrap.com/getting-started/browsers-devices/#supported-browsers)). No polyfills are added for older browsers support.

## Liens

### Le lien doit être compréhensible de lui-même

La configuration par défaut de certains lecteurs d'écran fait qu'ils ne lisent pas les attributs `title` des liens. Il faut donc privilégier un lien clair.

Au besoin, il est possible de raccourcir visuellement le lien via CSS

    <a><span class="visually-hidden">Ceci est un très long </span>lien</a>

### Le lien doit être concis

Utiliser des liens les plus concis possible sans sacrifier le sens.

Il ne s'agit pas d'une technique WCAG2, mais il est recommandé de ne pas dépasser 100 caractères.

Les lecteurs ont beaucoup de fonctionnalité qui permet aux utilisateurs de sauter au prochain mot, à la prochaine phrase, au prochain paragraphe ou au prochain en-tête par contre, les liens sont toujours lus dans leur intégralité.
Imaginé ce qui se passe si un paragraphe entier est un lien, l'entier du TEXT est lu par le lecteur d'écran sans aucune possibilité de stopper cette lecture. Cela peut être très agaçant.

Avec l'avènement du HTML5, faire de blocs de texte des liens est, malheureusement, une pratique courante à éviter.

### Toujours proposer une alternative textuelle, ne pas s'appuyer que sur le visuel

#### Caractères non-ASCII

Il faut éviter d'utiliser des caractères non ASCII.

Si cela est impossible, proposez une alternative textuelle en cachant le caractère non ASCII aux lecteurs d'écran.

    <a>
     <span class="visually-hidden">Smiley face</span>
     <span aria-hidden="true">:-)</span>
    </a>

#### Context visuel

Certains liens peuvent paraitre clairs aux voyants, mais c'est un autre problème pour les utilisateurs de lecteurs d'écran.

Voici un exemple:

> [12 - 17 ans](#) , [17 - 21 ans](#)

Le cas ci-dessus le lecteur d'écran lira:

> 12 17 ans

Remplacer le tiret par avec le mot "à" rendra le lien bien plus clair.

> [12 à 17 ans](#) , [17 à 21 ans](#)

Ici le lecteur lira:

> douze à 17 ans, 17 à 21 ans

### Ne pas utiliser d'URL comme lien texte

Par exemple l'URL [`www.chateaudechillon.ch/lemusee/contact/noustrouver.html`](http://www.chateaudechillon.ch) est aisément déchiffrable pour une personne voyante. Un lecteur d'écran, lui, lira tout à la suite. Cela devient très vite incompréhensible. Il faut favoriser un lien comme: [Comment accéder au Château de Chillon](#) .

### Restreindre le nombre de liens sur une page

Les liens sont une forme de navigation.

Lorsque vous construisez votre page, gardez à l'esprit que certaines personnes navigue de lien en lien. S'il y en a beaucoup, cela devient compliqué de s'y retrouver .

### Ne pas faire de lien direct sur des téléchargements

Les études UX montrent que les gens n'aiment pas télécharger. C'est encore plus frustrant lorsqu'ils lancent un téléchargement sans s'y attendre.

Il faut toujours indiquer quand un lien va lancer un téléchargement. Cette information doit être dans le lien.

- Mauvais exemple: [liste des établissements](#) (PDF)
- Bon exemple: [liste des établissements (PDF)](#)

[](https://static.notion-static.com/7330e97d211542dda46022f212314db2/link-docs.mp4)

Si vous utilisez une icône pour symboliser le format du document faites de sorte qu'ils aient un attribut `alt` .

Il ne faut pas utiliser d'icônes appliquées par CSS. Ceux-ci seront invisibles pour les lecteurs d'écran.

#### Si on a plusieurs liens à télécharger

Voici un exemple de liste de téléchargement ("Rapport annuel" étant le titre suivi d'une liste):

> **Rapport annuel** 
- [2016 PDF](#) , [2016 Word](#) 
- [2017 PDF](#) , [2017 Word](#)

    <h3>Rapport annuel</h3>
    <ul>
     <li><a href="#">2016 PDF</a>, <a href="#">2016 Word</a></li>
     <li><a href="#">2017 PDF</a>, <a href="#">2017 Word</a></li>
    </ul>

### Avertir les utilisateurs lorsqu'ils vont ouvrir une nouvelle fenêtre

L'ouverture d'une nouvelle fenêtre ou d'un nouvel onglet peut créer des confusions. Les lecteurs d'écran récents avertissent de l'ouverture d'une nouvelle fenêtre qu'une fois le lien cliqué par l'utilisateur. Les anciens lecteurs d'écran n'avertissent pas du tout l'utilisateur.

Les voyants peuvent voir la nouvelle fenêtre s'ouvrir, mais les utilisateurs souffrant de problème cognitif peuvent avoir des difficultés à interpréter ce qu'il se passe. Dès lors, quand ils cliquent sur le bouton "retour" du navigateur, rien ne se passe, car il n'y a pas de liens précédents où se rendre dans une nouvelle fenêtre ou onglet.

L'auteur doit avertir l'utilisateur sur le comportement du lien. Il est possible d'ajouter cette information entre parenthèses à la fin du lien.

> [Liste des contacts (ouvre une nouvelle fenêtre)](#)

### Soulignement des liens

Les utilisateurs s'attendent à ce que les liens soient soulignés.

De plus, les critères d'accessibilité WCAG 2.0 requièrent pour le niveau A de ne pas s'appuyer uniquement sur la couleur pour indiquer une action.

> 1.4.1 Use of Color: Color is not used as the only visual means of conveying information, indicating an action, prompting a response, or distinguishing a visual element. (Level A)
— [1.4.1 Use of Color](https://www.w3.org/TR/WCAG20/#visual-audio-contrast-without-color)

### Liens scriptés

L'utilisation d'événements script pour émuler des liens est également interdite dans le WCAG2.

Les liens doivent être des `<a href="">` ou `<area>` . L'utilisation de `onclick` sur des éléments divers comme des `<span>` , `<img>` ou `<div>` n'est pas permise.
