---
status: draft
---
## Fonts used

- [Roboto slab](https://fonts.google.com/specimen/Roboto+Slab)
  - Regular
  - Bold
- [Open Sans](https://fonts.google.com/specimen/Open+Sans)
  - Regular
  - Regular Italic
  - Bold
  - Bold Italic

You have to include the following code to load the fonts.
```html
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i|Roboto+Slab:300,700" rel="stylesheet">
```

## [Webfont Loader](https://github.com/typekit/webfontloader) code

Insert this code in your base template, to invoke all the needed fonts.

```html
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
<!-- Instead of using a CDN, you can host yourself the file -->
{% view '@webfont-loading' %}
```
