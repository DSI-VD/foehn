All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

- Update to Bootstrap 4 Beta
  - Replace `.btn-primary` class with `.btn-dark`

## [0.29.0]

### Changed
- Add mt-0 to legends of date search fields JSON from `template-communiques-press-list.json`
- Add "first" to `nav-side.config.json` for first element
- Moddified `@nav-side`
- Remove attribute `title` from link in `@teaser` (end of page)
- Move `@publish-time` after headings in `@template--news-detail`
- Correction orthographe interne à foehn composant `@search`
- Remove class `.vd-text-green` in `@publish-time`
- Change link in button in `@template-communiques-presse-detail--default`
- Change style of `@teaser` in `@service`
- Complete refactoring of pagination component `@pagination`
- Remove attribute `title` from link in `@teaser`
- Add `.access-nav` to `@access-nav`
- CSS changes
- Add `aria-hidden="true"` to secure header icon `@header--securise`
- Tranform authority links into a list (`ul` -> `li`)
- Change the structure of `@nav-mobile`

### Added
- "reset search" button to reset search filters after a first choice in `@template-communiques-presse-list`
- Add `.p` syle to make headings look like paragraph
- Add `@results-list` organism
- Add `@search` page

## [0.28.1] - 2017-07-21

### Fix
- Fix logo is visible in `@footer`
- Fix link color in `@highlight`
- Fix `.vd-bg-pattern-gray` dotted pattern use CSS instead of background SVG. It's now IE8 compatible.
- Fix `.vd-bg-pattern-bars-gray` striped pattern use CSS instead of background SVG. It's now IE8 compatible.

## [0.28.0] - 2017-07-14

### Changed
- `@theme` use `@template--default`
- Add `.vd-content` class in `@template--default`
- Add `.vd-content` class in `@template--2-col-nav`
- Add `.vd-content` class in `@template--2-col`
- Add `.vd-content` class in `@template--domaines`
- Add `.vd-content` class in `@template--homepage`
- Add `.vd-content` class in `@template--news-detail`
- Remove `.text-uppercase` class in `@template-communiques-presse-detail--default`
- Remove `.text-uppercase` class in `@template-communiques-presse-detail--alternate`
- Make `@nav` text bigger by removing `.small` class
- Remove content of the `<aside>` in `@template-communiques-presse-detail--default`
- Remove content of the `<aside>` in `@template-communiques-presse-detail--alternate`
- Change text in `@domains-list`
- Add `.mt-0` class for '@input--default' in `@template-communiques-presse-list--default`
- Change HTML structure of `@footer--default` and `@footer--securise` to fix logo positioning in IE
- Add `mt-0` class on `@teaser-small--alt`'s heading
- Change HMTL structure of `@social-icons` in `@news-detail`
- Change HMTL structure of `@social-icons` in `@actualite`
- Change HMTL structure of `@social-icons` in `@template-communiques-presse-detail`
- Add `.vd-content-column` style in `@template-communiques-presse-detail--default`
- Add `.vd-content-column` style in `@template-communiques-presse-detail--alternate`

### Added
- Add error 404 page `@error--default`
- Add error 500 page `@error--500`
- Add page `@news-list--categories`

### Fix
- Fix `@theme--default` now extends a `@template--2-col` template
- Fix light headers `.vd-heading-light` not affected by `.vd-text-md-small`
- Fix `@list-boxed` list items margin
- Fix max length of paragraph and lists for pleasant reading
- Fix focus style being inconsistent across browsers

## [0.27.0] - 2017-07-05

### Changed
- Remove `vd-green-dark-2` color
- `vd-green` is the brand color
- Change HTML structure of `@logo-etat--default` and `@logo-etat--alternate`
- Use [default twitter timeline](https://dev.twitter.com/web/embedded-timelines/user) in `@twitter-feed`

### Added
- Add color palette documentation

### Fix
- Fix missing `aria-hidden` in `@list-boxed` for font icon accessibility
- Fix missing `role` attribute in `@search-form`
- Fix `@social-icons` title in `@footer`
- Fix `@social-icons` HTML structure
- Fix hide logo in the footer for accessibility
- Fix the logo display in IE
- Fix `@h1` size
- Add documentation about Google fonts styles

### Removed
- Remove `@twitter-feed`

## [0.26.1] - 2017-06-08

### Changed
- Rename `@prestation` in `@detail-prestation`

### Added
- Add `@header--application` component

### Fix
- Fix generation problem with `@detail-prestation`

## [0.26.0] - 2017-06-07

### Changed
- Refactor lists in `@departements`
- Use `text-decoration-skip` for better underlined links
- Remove `<small>` tags in `@domain-item`
- Change logo positioning in `@footer--default`
- Change HTML structure and style of `@footer--default`
- Change HTML structure and style of `@footer--securise`
- Typography is based on Open Sans and Roboto Slab fonts
- Google CDN is used to get fonts

### Removed
- Removed `@list-no-bullet`
- Removed `.vd-list-no-bullet` style
- Remove Graphik and Produkt fonts

### Fix
- Fix margin of list of icons in `@teaser-list--homepage`
- Fix margin of the first content element in `@accueil`
- Fix text decoration of `:hover` link in `@nav-side`
- Fix top margin of `.col-{viewport}`s first element
- Fix `@list-boxed` margin

## [0.25.0] - 2017-05-31

### Changed
- Add margin before `@h1`, `@h2`, `@h3`, `@h4`, `@h5`, `@h6`, for better legibility
- Replace `.vd-section-title` by `.vd-heading-light`
- Add `.h4` class to `.vd-heading-light` headings in `@social-icons`
- Add `.h4` class to `.vd-heading-light` headings in `@agenda`
- Add `.h4` class to `.vd-heading-light` headings in `@autority-address`
- Add `.h4` class to `.vd-heading-light` headings in `@footer`
- Add `.h4` class to `.vd-heading-light` headings in `@teaser-list`
- Add `.h4` class to `.vd-heading-light` headings in `@twitter-feed`
- Add `.h4` class to `.vd-heading-light` headings in `@service`
- Add `.h4` class to `.vd-heading-light` headings in `@accueil`
- Remove custom margin bottom  in `@faq-item`
- Remove custom margin bottom  in `@avs13`
- Remove custom margin bottom  in `@dates`
- Remove custom margin bottom  in `@dates`
- Set margin top to null in `@domain-item`
- Remove custom margin bottom in `@teaser`
- Change `.mb-0` class by `.mt-0` in `@teaser-card`
- Remove useless `<div>` in `@highlight`
- Remove custom margin bottom  in `@agenda`
- Remove custom margin bottom  in `@autority-address`
- Remove custom margin bottom  in `@autority-info`
- Remove margin top of `@search-form--regular` in `@faq`
- Remove custom margin bottom in `@page-title-banner--form-presta`
- Remove custom margin top in `@page-title-banner--prestation`
- Remove custom margin top in `@page-title-banner`
- Remove custom margin bottom in `@teaser-list`
- Add margin top on `@separator--gray-bars-wide` in `@teaser-list`
- Remove custom margin bottom in `@template-communiques-presse-detail`
- Use `.vd-text-md-small` to make headings smaller in right column in `@template--2-col-nav`, `@template--2-col` and `@template--homepage`
- Remove custom margin on `<section>` in `@service`
- Remove margin top on `@autority-address` in `@service`
- Remove margin top on `@alert--default` in `@formulaire-prestation-confirmation`
- Remove margin top in `@notification`
- Remove margin top on `@autority-address` in `@theme`
- Add `.vd-content-column` style in `@template--2-col-nav`
- Add `.vd-content-column` style in `@template--2-col`
- Add `.vd-content-column` style in `@accueil`
- Add `.vd-content-column` style in `@theme`
- Add `.vd-text-md-small` style in `@template--2-col-nav`
- Add `.vd-text-md-small` style in `@template--2-col`
- Add `.vd-text-md-small` style in `@accueil`

### Added
- Add `@h1`
- Add `@h2`
- Add `@h3`
- Add `@h4`
- Add `@h5`
- Add `@h6`
- Add `.vd-content-column` style to remove top margin of the first element of a column
- Add `.vd-text-md-small` to make headings smaller when viewport is medium size

### Fix
- Fix default grid gutter is `30px` width
- Fix `@teaser-list--homepage` in `@accueil`
- Fix `@separator--default` color
- Fix `@separator--green-pattern-wide` width in IE
- Fix `@separator--gray-bars-wide` width in IE

### Removed
- Removed `.vd-section-title` style

## [0.24.0] - 2017-05-30

### Changed
- Remove `@separator--gray-pattern` in `@example-list`
- Remove the `.vd-separator-wide` class and make all separators full width
- `historique.config.json` updated with new data
- `prestations-config-json` updated, unnecessary attributes removed
- `prestations.html` globaly changed to follow new chosen interface
- attributes renamed in `tableau-de-bord.config.json` and values updated
- `@notification` template updated with new elements
- `notification.config.json` updated on `url` and `title` attributes.
- Remove `.small` class on `@footer` and `@footer--securise`
- Remove `.text-muted` class in `@footer`

### Added
- Add `@demande-detail` files (.config and .html)
- Add `@message-detail` files (.config and .html)
- Add `@demande-historique.html` template
- Add `@prestation.html` template

### Fix
- Fix `@breadcrumb` font size
- Fix `@footer` margin
- Fix `@link` color
- Fix link color and decoration in `@nav-side`

### Removed
- Remove `@separator--default--black`
- Remove `@separator--gray-pattern`

## [0.23.1] - 2017-05-17

### Changed
- `@access-nav` molecule use `.sr-only` and `.sr-only-focusable` to hide navigation and make it focusable
- `@access-nav` molecule use `.fixed-top`

## [0.23.0] - 2017-05-17

### Changed
- The `@alert` molecule has been renamed `@alert--default`

### Added
- Add `@alert--fixed` molecule

## [0.22.0] - 2017-05-09

### Changed
- Change margin in `@footer`
- Add `@update-time` in `@service`
- Remove `@separator--gray-bars-wide` in `@teaser-list--homepage`
- `@input--error` use `.vd-form-group-danger` style

### Added
- Add `.vd-form-group-danger` style for form elements
- Add `@fieldset--error`
- Add `@textare--error`

### Fix
- Fix missing name in `@fieldset--checkbox`

### Removed
- Remove `@checkbox--warning`
- Remove `@radio--warning`
- Remove `@input--validation-warning`

## [0.21.3] - 2017-05-03

### Fix
- Change color of `:focus` style
- Only upload the `dist/assets/` folder on the registry

## [0.21.2] - 2017-05-03

### Fix
- Fix npm script

## [0.21.1]  

### Changed
- `@accueil` and `@teaser-list--homepage` use `@teaser--small-media` for the first image
- Images can have a link in `@figure`
- Change how information is displayed in `@tableau-de-bord`
- Add `@separator--gray-bars-wide` in `@teaser-list`
- Add `@separator--gray-bars-wide` in `@teaser-list--homepage`
- `@news-list` has fake content
- Rename `@demandes` in `@historique` and change content
- Rename `@acceuil-securise` in `@tableau-de-bord` and change content

### Added
- Add `@teaser--small-media` component
- Add `styleModifier` in `@figure`
- Add `@news-list--projets` template
- Add `@search-form--regular-option`component

### Fix
- Fix `@figure` wasn't rendering in `@news-detail`
- Fix missing `@lead` in `@news-detail`
- Fix `@social-icons` has no title in `@news-detail`

## [0.21.0] - 2017-04-21

### Changed
- `@radio` only contain one radio button
- `@checkbox` only contain one checkbox
- Config navigation in `@prestationsa` page
- Config navigation in `@documents` page
- Config navigation in `@demandes` page
- Config navigation in `@accueil-securise` page
- Rename `espace-securise` page in `@accueil-securise`
- Simplify `@page-title-banner--form-presta` organism HTML
- Renamed template-presta in `@espace-securise`
- Renamed template-presta-form in `@espace-securise`
- Change structure of `@header-securise` organism
- `@connexion` page use `@template-presta` template
- `@demandes` page use `@template-presta` template
- `@documents` page use `@template-presta` template
- `@espace-securise` page use `@template-presta` template
- `@prestations` page use `@template-presta` template
- Use `@button--submit` in `@pagination`

### Add
- Add `@fieldset--checkbox` molecule
- Add `@nav-horizontal` molecule
- Add `@modal` molecule
- Add `@input--date` molecule
- Add `@input--disabled` molecule
- Add info about `autocomplete` attribute in `@input--default`
- Add `@radio--validation-success` molecule
- Add `@radio--validation-warning` molecule
- Add `@radio--validation-danger` molecule
- Add `@radio--disabled` molecule
- Add `@checkbox--validation-success` molecule
- Add `@checkbox--validation-warning` molecule
- Add `@checkbox--validation-danger` molecule
- Add `@checkbox--disabled` molecule
- Add `@input--validation-danger` molecule
- Add `@input--validation-warning` molecule
- Add `@input--validation-success` molecule

## Fix
- Fix missing `name` attribute config in `@radio`

### Removed
- Removed feedback molecule

## [0.20.1] - 2017-04-06

### Fix
- Remove unused bower.json
- Fix line breaks in inline SVG

## [0.20.0] - 2017-04-06

### Changed
- Agenda use default teaser
- Service page use only teaser-list--default
- Use teaser--default component in news-list page
- Update layout and improve a11y of teaser--default
- Change presentation of prestation page
- Change color and decoration of links
- Align pagination on the sides of the containers
- Change nav-primary HTML to apply properly `:focus` style
- Font size do not change on mobile
- Change search form grid in template-communiques-presse-list template
- Apply the bootstrap style on `blockquote` and `blockquote > cite`
- Change HTML structure of search in template-communiques-presse-list--default
- Change of meta information in teaser components and variants
- Renamed news-latest component in teaser-list
- Renamed teaser-list component in teaser-alt-list
- Use news-latest--media organim instead of project-list in service page
- Blockquote use `<cite>` element instead of `<footer>` for references
- teaser-small--alt use headings font

### Added
- Add news-latest--media organim

### Fix
- Fix loading order of fonts
- List-links use the default font weight
- Fix input width based on number of chars. Width is now based on the width of a `M` instead of a `9`.

### Removed
- Remove figure--caption component
- Remove teaser--left component
- Remove teaser--media component
- Remove `.vd-teaser-meta` class
- Remove teaser-alternate--default component
- Remove teaser-alternate--2-3_1-3 component
- Remove projects-list component

## [0.19.0] - 2017-03-21

### Changed
- Add url on autority-address
- Refactor page organisation
- News-latest is in a `<section>`
- Project-list is in a `<section>`
- Change link color in nav-side
- Change connexion information on header-securise
- Change button--form class
- Change color of pagination buttons
- Change width of form in template-presta-form
- Center pagination
- Dates molecule reference input--number
- Use .vd-form-flex for dates molecule
- Make design of nav-side more obvious
- Clean up CSS

### Added
- Add color component
- Add datalist component
- Add select--multiple component
- Add select config
- Add textarea config
- Add configuration for nav
- Add the ability to have button--form in pagination
- Add avs13 molecule
- Add .vd-form-flex style
- Add input--number molecule
- Add atom list--no-bullet
- Add style '.vd-list-no-bullet'

### Fixed
- Fix missing pagination on news-list
- Fix horizontal alignment of pagination
- Fix missing breadcrumbs

### Removed
- Remove `.flex-row` class (was overriding a B4 class and was never used)
- Remove legacy Toolbox styleguide assets

## [0.18.0] - 2017-03-07

### Changed
- Change alert color
- Template engine is Nunjucks
- Help-text molecule is a variation of input molecule
- Change input--required molecule structure
- Add margin after nav-side
- Add stylelint-order npm dependency

### Added

- Add style for tabs content
- Add page polluants-atmospheriques
- Add template template-presta
- Add template template-presta-form
- Add template template--default
- Add template template--2-col
- Add template template--2-col-nav
- Add template template--2-domains
- Add template template--2-homepage
- Add template template--2-news-detail
- Add template template-communiques-press-detail
- Add template template-communiques-press-list
- Add email type in input molecule
- Add password type in input molecule
- Add file type in input molecule

## [0.17.0] - 2017-02-17

### Changed

- Use autority-address organism in communiques-presse-list page
- Use autority-address organism in communiques-presse-detail page
- Change dates molecule structure and styles
- Put help-text before input
- Use dates component in communique-presse-list
- Button--cta is no more a block
- Button are bigger
- Fix a11y of primary-nav
- Make primary nav a list
- Make domain list a list
- Separate number of step and step title in formulaire-prestation
- Hide to screen reader paragraph about mandatory fields in form

### Added

- Add template--2-col-nav template
- Add help text in dates molecule
- Add dates config
- Add back link in communique-presse-detail
- Add domain-item component

### Fix

- Fix nave-side flex-direction
- Fix dates molecule alignment on Firefox
- Fix a11y of social-icons

### Removed

- Removed teaser-link component

## [0.16.0] - 2017-02-10

### Changed

- Change margin of footer--securise
- Update-time in footer--default is optional
- Change columns in footer--securise
- Change position of update-time in teaser-alternate
- Link on header in teaser-alternate is black

### Added

- Add formulaire-prestation template variants
- Add alert molecule
- Add page-title-banner--form-presta organism
- Add button--form atom
- Add update-time on extrait-du-registre-des-poursuites
- Add title on communique-presse-list
- Add page-title-banner--light organism

### Fix

- Fix header--securise dropdown alignment
- Fix unaccessibility of block-level links in teasers
- Fix margin of page-title-banner--light organism
- Fix margin of publish-time atom
- Fix breadcrumb isn't display on certain templates and pages

## [0.15.0] - 2017-02-09

### Changed

- Default teaser-card is the light grey one
- Change `<main>`, `<aside>`, `<h1>` , etc. structure of templates ad pages
- Add title on breadcrumb molecule
- Rename actualites template news-list
- Rename news template news-detail
- Add update-time in footer--default
- Print button is hidden on mobile devices
- Embed-container molecule use Bootstrap responsive helpers
- Use Bootstrap `.embed-responsive` for embed-container molecule
- Add margin bottom on faq-item molecule
- Change wording for search-form
- Office-des-faillites page use project-list
- Use time atom in teaser-alternate
- Add a button-tiles on accueil
- Update to Bootstrap 4 alpha 6
  - Renamed `.tag`s to `.badge`
  - Renamed `.*-xxs-*` to `*-*`
  - Remove `.nav-inline` in nav component
  - Refactor HTML of nav component
  - Use `.show` instead of `.in` in nav-primary
  - Remove `.text-sm-right` in headers components
- Use striped rows on table
- Reduce signature text-size in communique-presse-detail
- Reduce signature text-size in communique-presse-detail-alternate
- Refactor lists
- Move some templates in pages components
- [Fractal](http://fractal.build/) is used to generate the frontend
- Move logo to the right on the homepage
- Update boostrap-variables to last Alpha 6 version
- Reduce height of header search-form #607

### Added

- Add `bower.json`
- Add theme template for geographic services
- Add autority-info components
- Add `.table-responsive` on table
- Add search-banner organim
- Add autority-address organism
- Add teaser card color variants
- Add page-title organism
- Add config for search-form atom
- Add titleModifier in faq organism
- Add projects-list organism
- Add page-title-banner organism
- Add video-list organism
- Add embed-container molecules
- Add signature molecule
- Add publish-time molecule
- Add time atom
- Add news template
- Add download-list organism
- Add pages section for components
- Add a button--secondary atom
- Add a button--cta atom
- Add a media-list organism

### Fix

- Fix teaser-card links
- Fix update-time margin
- Fix homepage button-tiles context
- Fix radio include in fieldset molecule
- Fix footer columns
- Fix contact-form use submit molecules
- Fix example-form use submit molecules
- Fix size of submit button in contact-form
- Fix box-shadow of a11y navigation
- Fix font-family in button element #608
- Fix list-boxed elements in column mode #606
- Fix search input button in IE #605

### Removed

- Remove image alignment styles
- Remove unnecessary `role=navigation` on `<nav>`
- Remove unnecessary `role=banner` on `<header>`
- Remove social-icons--footer molecule
- Remove unnecessary ignored files in gitignore and stylelintrc
- Remove font-icons from project, use font-awesome instead #598

## [0.14.0] - 2017-01-20

### Changed

- Use teaser-list in Communiqué de presse page
- Move teaser-alternate-2 in teaser-small
- Clean teaser alternate HTML #595
- Remove teaser alternate column push #595
- Figure use the `<picture>` element
- Use variant for teaser without image
- Default teaser molecule has an image
- Change wording of the "Back to top" button in domain list
- Dates forms stay on the same line on mobile
- Use teaser molecule in news-latest organism #590
- WhatsApp social icon is only visible on tablet and smaller devices
- Make horizontal padding smaller on Communiqué de presse titles
- Make the padding of the title banner smaller #589
- Bring back "Tous les thèmes" button in mobile menu
- The entire teaser molecule is clickable
- Refactor teaser-small molecule HTML
- Fix Toolbox URLs to components #568
- Changed Highlight component to its new style #453
- Reduce size of section title in footer #562
- Fix the logo size #558
- Changed link color if it has `.h[1-6]` class #383
- Changed list style type to disc #432

### Added

- Add content on "Accueil" page
- Add teaser-left molecule
- Add a teaser list organism
- Add a one third - two third variant of teaser alternate
- Add a condition to display figcaption in figure
- Add category on teaser image
- Add "Communiqué de presse results" page
- Add FAQ item molecule
- Add FAQ organism
- Add example list molecule
- Add a form example organims
- Add teaser alternate 3 molecule
- Add address service molecule
- Add a `.vd-link-invisible` helper
- Add the possibility to add a status in FrontMatter of components (`prototype`, `wip`, `ready`) and docs page (`draft`, `ready`) #565

### Fix

- Fix dates forms not showing the numeric pad on mobile
- Fix teaser on the homepage #590
- Fix margin on "communiqué de presse detail" and "communiqué de presse detail - alternate"
- Fix `vd-list-links` font weight
- Fix columns in "Poursuites et faillites" page
- Fix font weight and case in teaser alternate 2 #564
- Fix white line in footer #563
- Fix space between logo and lines in footer #561
- Fix the spacing in the header #559
- Fix breadcrumb invisible on mobile #588

### Removed

- Removed content in nav-primary molecule
- Removed `.vd-teaser-alternate-2` styles
- Removed `.vd-teaser-alternate-2-list` styles
- Removed `<hr>` on teaer alternate
- Removed teaser alternate 3 molecule
- Removed `.vd-teaser-content` class
- Removed `.vd-teaser-title` class
- Removed `.vd-teaser-small-content` class
- Removed polyfills from styleguide #566
- Removed Contact link from header-securise component #490

## [0.13.0] - 2016-12-22

### Changed

- Change the columns in the footer to `xs` sizes
- All grid layout use `.vd-nav-flex` class
- News detail use `.container-small` class to reduce the width of the page
- Change social icons platforms
- Add header to social icons list
- Add class `.mt-1` on social icons title
- Change Communiqué de presse title style
- Grouped a lot of components together using the variant feature of Toolbox
- Revert to using flex grid of Bootstrap 4
- Use search-form component in actualites page #511
- Wrapp the teaser-small component in a link #529
- Remove `<hr>` from vd-teaser component and replace with CSS #521
- Setup the search form for communiques de presse #437

## Added

- Add a page Communiqué de press détail alternate
- Add a teaser-alternate-2 molecule
- Add Communiqué de presse détail page
- Add a lead atom
- Add a `.container-small`
- Add publication date on news
- Add `vd-text-green` helper
- Use news-latest organims on homepage
- Add a news-latest organims
- Add news category inside image figure component
- Add a new `.vd-search-form-regular` component
- Add a new `.vd-bg-pattern-bars-gray` helper class for search area
- Add the social links above footer
- Add a simple black `<hr>` with `.vd-hr-black`
- Add form-checkbox molecule
- Add form-radio molecule
- Add form-textarea molecule
- Add form-fieldset molecule
- Add form-select molecule
- Add form-submit molecule
- Add index-menu molecule
- Add a start of responsive typography

### Fix

- Fix logo footer style
- Fix centering of pagination
- Refactor `.vd-teaser-img` style
- Fix style of lead
- Fix teaser image size
- Fix teaser-small image size
- Fix margin of the `hr` in domain list to `.mt-2`
- Set the logo coat of arms outside the container #503
- Fix the fonts in primary navigation
- Fix navs grid after flex grid revert
- Fix `vd-teaser-img` size on IE
- Fix the mobile navigation #460

## [0.12.0] - 2016-12-08

### Changed

- Modify the existing Blockquotes to `.vd-blockquote-bubble` and `.vd-blockquote-bubble-media` classes #487
- Move back to top button in domain list
- Change style of back to top button in domain list
- Visually hide headings "Accès direct" in domain page
- Change list style of "Accès direct" in domain page
- Nav use a smaller font size
- Rename "Espace securisé" link in nav to "Mon compte"
- Add a locker to "Mon compte"
- Change margin of "Les plus visités" in primary nav
- Footer use a smaller font
- Update news metatdata info
- Homepage show 4 news
- "Toutes les autorités" button on homepage is smaller
- "Actualites" are shown in row on "Actualités" pages
- Pagination use inline-list instead of grid
- Remove "Tout l'agenda" button on Accueil

### Added

- Add new Blockquote style and make it the default one #487
- Add new Update Time atom #447
- Add "Toutes l'actualitées" button on homepage
- Add "Tous les communiqués" button on homepage
- Add "Toutes les décisions du conseil d'état" button on homepage

### Fixed

- Fix figure-caption size and look #429
- Fix logo width (to avoid it being full width flex)

## [0.11.0] - 2016-12-06

### Changed

- Twitter feed show two items
- Twitter feed use `.vd-teaser-small` class
- Agenda feed use `.vd-teaser-small` class
- `.vd-teaser-image` set the max-width to `50%`
- Moved `.vd-teaser-meta` out of `.vd-teaser-content` #473
- Wrapped a link around the content of `.vd-teaser-content` #473
- Set styles for links everywhere in teaser component #473 #474
- Change sidebar to `<aside class="small"></aside>` tag #444
- Change logo margin #419
- Implement a bigger gutter-width (90px) #476
- Implement logo with coat off arms only on mobile #458

### Added

- Add Agenda feeds organims
- Add Images atom
- Add Image responsive atom
- Add Twitter feed organism
- Add Form feedback molecule
- Add Form help text molecule
- Add Form input molecule
- Add Form input required molecule
- Add Contact form organism
- Add Layout documentation about sidebar and main area #444

### Fixed

- Fix container max-width on mobile
- Changed Graphik font name in doc #426
- Fix search form height #459

## [0.10.2] - 2016-11-29

### Fixed

- Fix Changelog file extension

## [0.10.1] - 2016-11-29

### Fixed

- Fix Changelog location

## [0.10.0] - 2016-11-29

### Changed

- Finetune all components

## [0.9.0] - 2016-11-17

### Changed

- foehn is now based on bootstrap v4
- foehn use [toolbox](http://frontend.github.io/toolbox/) for documentation

### Added

- Add all basics components

## [0.8.0] - 2016-08-23

### Added

- Forms style use based on (WTF, forms ?](http://wtfforms.com/)

### Changed

- Refactor CSS
- Add clearfix in `.o-wrapper`

## [0.7.0] - 2016-08-17

### Added

- Add style for the header
- Add `.vd-layout__item--lap-and-up--3-4` class
- Add `text-center` class
- Add organisation template
- Add list-prestation organism
- Add projects organim
- Add media-block-big molecule
- Add organisation section organism
- Add organisation-list molecule
- Add `list-abbreviation` style
- Add circle image in image shape atom
- Add people block molecule
- Add avatar image atom
- Add a list-news page
- Add mega menu organism
- Add a theme template
- Add box info molecule
- Add box transaction molecule
- Add secondary navigation molecule
- Add lede paragraph atom
- Add news related links organism
- Add related news organism
- Add news page
- Add page title with image organism and `.vd-page-title--image` styles
- Add pagination molecule
- Add social organims
- Add contact organism
- Add `.vd-layout-[viewport]--row` to set flex direction to row
- Add `.vd-layout-[viewport]--column` to set flex direction to column
- Add domaine-section organism
- Add a theme page with real content
- Add gutter helpers `.vd-u-g*` for `.vd-layout__item`

### Changed

- Renamed the class `vd-visually-hidden` in `vd-u-visually-hidden`
- Renamed the class `vd-hidden` in `vd-u-hidden`
- Renamed the class `vd-text-center` in `vd-u-text-center`
- Renamed the class `vd-zeta` in `vd-u-h6`
- Renamed the class `vd-epsilon` in `vd-u-h5`
- Renamed the class `vd-delta` in `vd-u-h4`
- Renamed the class `vd-gamma` in `vd-u-h3`
- Renamed the class `vd-beta` in `vd-u-h2`
- Renamed the class `vd-alpha` in `vd-u-h1`
- Renamed the class `vd-font-heading` in `vd-u-font-heading`
- Renamed the class `vd-color` in `vd-u-color`
- Renamed the class `vd-clearfix` in `vd-u-clearfix`
- Renamed trumps css files utilities
- Renamed the class `vd-wrapper` in `vd-o-wrapper`
- Use BEMIT naming convention for responsive suffixes: `.vd-<Block>--<Modifier>@<breakpoint>` instead of `.vd-<Block>--<breakpoint>--<Modifier>`
- Renamed the class `vd-strong` in `vd-c-strong`
- Renamed the class `vd-small` in `vd-c-small`
- Renamed the class `vd-blockquote` in `vd-c-blockquote`
- Renamed the class `vd-page-title` in `vd-c-page-title`
- Renamed the class `vd-navbar` in `vd-c-navbar`
- Renamed the class `vd-list-abbreviations` in `vd-c-list-abbreviations`
- Renamed the class `vd-fraction` in `vd-c-fraction`
- Renamed the class `vd-footnote` in `vd-c-footnote`
- Renamed the class `vd-small-caps` in `vd-c-small-caps`
- Renamed the class `vd-image-circle` in `vd-c-image-circle`
- Renamed the class `vd-header` in `vd-c-header`
- Renamed the class `vd-button` in `vd-c-button`
- Renamed the class `vd-breadcrumb` in `vd-c-breadcrumb`
- Renamed the class `vd-background` in `vd-c-background`
- Renamed the class `vd-table` in `vd-o-table`
- Renamed the class `vd-list-inline` in `vd-o-list-inline`
- Renamed the class `vd-list-bare` in `vd-o-list-bare`
- Renamed the class `vd-layout` in `vd-o-layout`
- Renamed the class `vd-box--*` in `vd-c-box--*`
- Renamed the class `vd-box` in `vd-o-box`
- Add `vd-list-inline__item` class for `vd-list-inline item`
- Rename class `vd-container` in `vd-wrapper`
- Refactor `.vd-button` styles with mixins
- Rename `global.navigation-*` materials in `global.header-*`
- Positionning the logo and site-title in the navbar
- Use flexbox to style the navbar
- Refactor how `.vd-container` is used in materials
- Media block columns are set to 1/3 - 2/3
- Remove `vd-container` class on last-news organism
- Rename box default molecule
- Page title organism is in a `<header>`
- Refactor event-block HTML
- Refactor `.vd-layout` styles
- Refactor Media Blocks molecule html
- Grid is now based on fractions
- Layout itms adapt automatically depending of the viewport.
- Template theme use only placeholder
- Refactor media block HTML
- Break header organim in smaller organims

### Fix

- Fix mega menu column width on lap-and-up viewport

### Removed

- Remove `vd-list-block` class
- Remove auto styling for `vd-list-inline` childrens
- Remove box lit organism
- Remove alert molecule
- Remove 12 columns based grid
- Remove Expo objects
- Remove viewport specific layout classes
- Remove `vd-layout--column`
- Remove unused alerts

## [0.6.1] - 2016-07-13

### Changed

- Hide legend and label in search bar
- Refactor gulp tasks
- Lint script with `eslint`
- Upgrade `eslint`
- Upgrade `eslint-config-standard`
- Upgrade `eslint-plugin-standard`
- Upgrade `gulp-eslint`
- Upgrade `gulp-htmlhint`
- Upgrade `lost`
- Upgrade `webfontloader`
- Upgrade `postcss-calc`
- Upgrade `run-sequence`
- Upgrade `normalize.css`
- Upgrade `fabricator-assemble`
- Upgrade `babel-core`
- Upgrade `babel-preset-stage-2`
- Upgrade `del`
- Upgrade `postcss-extend`
- Upgrade `postcss-mixins`
- Replace `postcss-advanced-variables` with `postcss-each`, `postcss-for` and `postcss-simple-vars`
- Update CSS linting rules

## [0.6.0] - 2016-05-25

### Added

- Add text accessibility documentation
- Add `.vd-color-text--*` classes to set text color
- Add `.vd-background-primary` class
- Add missing molcule for `.vd-background--gray-lighter`
- Add `.vd-background--gray-lighter` class
- Add modifier on last-news organism
- Add the possibilie to add a modifier on headings atoms
- Add `.vd-background` class to add vertical spacing on items that have colored background
- Add an atom for fonts
- Add `.vd-font-heading` class
- Upgrade autoprefixer to 6.3.6
- Add a molecule for search results
- CSS linting support stylelint 6.3.3 rules

### Changed

- HTML in `dist/` instead of `src/` is linted
- Homepage view has been updated
- Homepage template has been updated
- refactor HTML of page-titles organim
- remove vertical spacing in media-blocks
- remove figcaption from media-block molecule
- 3 news instead of 5 are shown in the `latest-news` organism
- Add margin at bottom of `.vd-list-bare`
- Add margin at the bottom of list items

### Fixed

- Fix color variables names
- Fix `.vd-background` vertical spacing
- Fix missing `vd-*` prefix in Small Caps atom
- Fix missing `vd-*` prefix in Fraction atom
- Fix missing `vd-*` prefix in Footnote atom

## [0.5.0] - 2016-04-29

### Added

- Provide a `/dist` folder with all foehn files
- Add a changelog
- Add a GitHub Template for Pull Request
- Add states class for button
- Add style for disabled button

### Changed

- `.btn` object class is renamed `.buttton`
- Update normalize.css to 4.1.1
- Refactor CSS
- Stylelint rules extends a shared configuration
- Update Stylelint
- Update Stylelint rules
- Move GitHub related files to `/.github`
- Colors have moved in an atom
- Typography has been removed from the overview page. It was already documented in atoms

### Fixed

- Fix colors of active buttons
- Fix uncollapsed table cells
- Fix `foehn.css` table of content

## [0.4.2] 2016-04-14

### Added

- Add style for transparent buttons
- Add style for full width buttons
- Add style for background colors
- Add `.list-bare` class to remove standard list styles
- Add `.list-block` style for blocky list
- HTML is linted via *htmllint*

### Changed

- `<code>` use a background color from the palette
- `toolkit.*` files are renamed in `foehn.*`
- The CSS is beautified at the end of the build
- Update *normalize.css*

### Removed

- Font comparaison pages are removed

## [0.4.1] - 2016-03-15

### Changed

- Update building documetation

## [0.4.0] - 2016-02-16

### Added

- Added styles for alert boxes
- Added styles for select menu
- Forms have a focus state
- All classes are prefixed with `vd-*`

### Changed

- Improve button design and styles
- Improve styles of checkboxes
- Reorganize colors documentation

### Fixed

- Fix active state on button wasn't working

## [0.3.1] 2016-02-23

### Added

- More grays variations are added to the color palette

### Changed

- Forms are more readable

## [0.3.0] - 2016-02-19

### Added

- Color palette documentation and create CSS variables for colors
- Added basic styles for buttons
- Added CSS structure for buttons variations
- Added basic styles for forms
- Added styles for horizontal rules
- Added styles for tables and stripped tables
- Added styles for captions
- Added documentation about image and art direction

### Changed

- Use responsive markup for images
- Use a variables for blockquote border
- Update fabricator
- Update Stylelint
- Set letter-spacing to 0 for `<cite>`

### Removed

- Removed Typekit javascripts
- Removed `picturefill` polyfill

## [0.2.1] - 2016-02-11

### Changed

- Enforce properties order in CSS
- Set letter-spacing in blockquotes to 0

## [0.2.0] - 2016-02-11

### Added

- PostCSS is used to generate the stylesheets
- `postcss-hidden` is used to create styles that hide things
- "Official green" is added in the color palette
- Suported browser are set in `gulpfile.js`
- A basic layout/grid system is available
- Typographic styles are set.
- Webfontloader is used to load asynchronously fonts and avoid FOIT
- Use stylelint to lint CSS code and provide a consistant way to write styles

### Removed

- Removed mixin that automaticaly generate classes base on breakpoints

### Fixed

- Fix `gulp-imagemin` was getting an EONET error.
- Fix alignment problems in IE11 with layouts items
- Fix nesting problems in IE with layouts items

## 0.1 - 2015-09-23

### Added

- Atom: Headings
- Atom: Paragraph
- Atom: Abbreviation
- Atom: `<b>` element
- Atom: Citation
- Atom: Code
- Atom: Definition
- Atom: Deleted
- Atom: Emphasis
- Atom: `<i>` element
- Atom: Inserted
- Atom: Keyboard input
- Atom: Silent links
- Atom: Links
- Atom: Mark
- Atom: Quotation
- Atom: Sample
- Atom: Small
- Atom: Strike
- Atom: Strong
- Atom: Subscript
- Atom: Superscript
- Atom: Unarticluated
- Atom: Variable
- Atom: Time
- Atom: Lists
- Atom: Blockquote
- Atom: Preformated Text
- Atom: Horizontal rules
- Atom: Images
- Atom: Logo and square logo
- Atom: Figure caption
- Atom: Table
- Atom: Buttons
- Atom: Forms
- Atom: Checkbox
- Atom: Radio button
- Atom: Select menu
- Atom: Text fields
- Atom: Textarea
- Atom: Containers
- Atom: Visibility helpers
- Molecule: Address
- Molecule: Blockquote with citation
- Molecule: Lead
- Molecule: Figure with caption
- Molecule: Adaptive media block
- Molecule: Media Block
- Molecule: Search form
- Molecule: Box
- Molecule: Layout
- Molecule: Responsive layout
- Molecule: Expos
- Molecule: Responsive expos
- Organism: Header
- Organism: Footer
- Organims: List of boxes
- Organism: Last news
- Organism: List of news
- Template: Organisation page
- Added `picturefill`, a responsive image polyfill for `<picture>`, `srcset`, `sizes`, and more
- Use Google fonts for fallback
- Create data placeholder
- Import Normalize css
- Follow css guidelines
- Headings helpers
- Responsive typography


[Unreleased]: https://github.com/DSI-VD/foehn/compare/v0.29.0...HEAD
[0.29.0]: https://github.com/DSI-VD/foehn/compare/v0.28.1...v0.29.0
[0.28.1]: https://github.com/DSI-VD/foehn/compare/v0.28.0...v0.28.1
[0.28.0]: https://github.com/DSI-VD/foehn/compare/v0.27.0...v0.28.0
[0.27.0]: https://github.com/DSI-VD/foehn/compare/v0.26.1...v0.27.0
[0.26.1]: https://github.com/DSI-VD/foehn/compare/v0.26.0...v0.26.1
[0.26.0]: https://github.com/DSI-VD/foehn/compare/v0.25.0...v0.26.0
[0.25.0]: https://github.com/DSI-VD/foehn/compare/v0.24.0...v0.25.0
[0.24.0]: https://github.com/DSI-VD/foehn/compare/v0.23.1...v0.24.0
[0.23.1]: https://github.com/DSI-VD/foehn/compare/v0.23.0...v0.23.1
[0.23.0]: https://github.com/DSI-VD/foehn/compare/v0.22.0...v0.23.0
[0.22.0]: https://github.com/DSI-VD/foehn/compare/v0.21.3...v0.22.0
[0.21.3]: https://github.com/DSI-VD/foehn/compare/v0.21.2...v0.21.3
[0.21.2]: https://github.com/DSI-VD/foehn/compare/v0.21.1...v0.21.2
[0.21.1]: https://github.com/DSI-VD/foehn/compare/v0.21.0...v0.21.1
[0.21.0]: https://github.com/DSI-VD/foehn/compare/v0.20.1...v0.21.0
[0.20.1]: https://github.com/DSI-VD/foehn/compare/v0.20.0...v0.20.1
[0.20.0]: https://github.com/DSI-VD/foehn/compare/v0.19.0...v0.20.0
[0.19.0]: https://github.com/DSI-VD/foehn/compare/v0.18.0...v0.19.0
[0.18.0]: https://github.com/DSI-VD/foehn/compare/v0.17.0...v0.18.0
[0.17.0]: https://github.com/DSI-VD/foehn/compare/v0.16.0...v0.15.0
[0.16.0]: https://github.com/DSI-VD/foehn/compare/v0.15.0...v0.16.0
[0.15.0]: https://github.com/DSI-VD/foehn/compare/v0.14.0...v0.15.0
[0.14.0]: https://github.com/DSI-VD/foehn/compare/v0.13.0...v0.14.0
[0.13.0]: https://github.com/DSI-VD/foehn/compare/v0.12.0...v0.13.0
[0.12.0]: https://github.com/DSI-VD/foehn/compare/v0.11.0...v0.12.0
[0.11.0]: https://github.com/DSI-VD/foehn/compare/v0.10.2...v0.11.0
[0.10.2]: https://github.com/DSI-VD/foehn/compare/v0.10.1...v0.10.2
[0.10.1]: https://github.com/DSI-VD/foehn/compare/v0.10.0...v0.10.1
[0.10.0]: https://github.com/DSI-VD/foehn/compare/v0.9.0...v0.10.0
[0.9.0]: https://github.com/DSI-VD/foehn/compare/v0.8.0...v0.9.0
[0.8.0]: https://github.com/DSI-VD/foehn/compare/v0.7.0...v0.8.0
[0.7.0]: https://github.com/DSI-VD/foehn/compare/v0.6.1...v0.7.0
[0.6.1]: https://github.com/DSI-VD/foehn/compare/v0.6.0...v0.6.1
[0.6.0]: https://github.com/DSI-VD/foehn/compare/v0.5.0...v0.6.0
[0.5.0]: https://github.com/DSI-VD/foehn/compare/v0.4.2...v0.5.0
[0.4.2]: https://github.com/DSI-VD/foehn/compare/v0.4.1...v0.4.2
[0.4.1]: https://github.com/DSI-VD/foehn/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/DSI-VD/foehn/compare/v0.3.1...v0.4.0
[0.3.1]: https://github.com/DSI-VD/foehn/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/DSI-VD/foehn/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/DSI-VD/foehn/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/DSI-VD/foehn/compare/v0.1.0...v0.2.0
