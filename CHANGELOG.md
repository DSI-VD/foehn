# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

### Changed

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

### Fix

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

## [0.12.0]

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

## [0.11.0]

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

## [0.10.2]

### Fixed

- Fix Changelog file extension

## [0.10.1]

### Fixed

- Fix Changelog location

## [0.10.0]

### Changed

- Finetune all components

## [0.9.0]

### Changed

- foehn is now based on bootstrap v4
- foehn use [toolbox](http://frontend.github.io/toolbox/) for documentation

### Added

- Add all basics components

## [0.8.0]

### Added

- Forms style use based on (WTF, forms ?](http://wtfforms.com/)

### Changed

- Refactor CSS
- Add clearfix in `.o-wrapper`

## [0.7.0]

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

## [0.6.1]

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

## [0.6.0]

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

## [0.5.0]

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

## [0.4.2]

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

## [0.4.1]

### Changed

- Update building documetation

## [0.4.0]

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

## [0.3.1]

### Added

- More grays variations are added to the color palette

### Changed

- Forms are more readable

## [0.3.0]

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

## [0.2.1]

### Changed

- Enforce properties order in CSS
- Set letter-spacing in blockquotes to 0

## [0.2.0]

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

## 0.1

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


[Unreleased]: https://github.com/DSI-VD/foehn/compare/v0.12.0...HEAD
[0.12.0]: https://github.com/DSI-VD/foehn/compare/v0.11.0...0.12.0
[0.11.0]: https://github.com/DSI-VD/foehn/compare/v0.10.2...v0.11.0
[0.10.2]: https://github.com/DSI-VD/foehn/compare/v0.10.1...v0.10.2
[0.10.1]: https://github.com/DSI-VD/foehn/compare/v0.10.0...c.0.10.1
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
