---
status: draft
---
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
