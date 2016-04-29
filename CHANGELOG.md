# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

### Added

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


[Unreleased]: https://github.com/DSI-VD/foehn/compare/v0.4.2...HEAD
[0.4.2]: https://github.com/DSI-VD/foehn/compare/v0.4.1...v0.4.2
[0.4.1]: https://github.com/DSI-VD/foehn/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/DSI-VD/foehn/compare/v0.3.1...v0.4.0
[0.3.1]: https://github.com/DSI-VD/foehn/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/DSI-VD/foehn/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/DSI-VD/foehn/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/DSI-VD/foehn/compare/v0.1.0...v0.2.0
