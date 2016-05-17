## Fonts

The font used for the body text is [FF Meta Serif](https://www.fontfont.com/fonts/meta-serif) and [FF Meta Condensed](https://www.fontfont.com/fonts/meta) for the headings.

We use web fonts to ensure the most identical possible experience on the widest range of devices.  
The selected fonts responded to the accessibility and readability criteria.

## Loading strategy

[Webfontloader](https://github.com/typekit/webfontloader) is used to load enhanced fonts. The following class are added to the `<html>` tag when fonts are available:
- `.wf-metaserifweb-n4-active`: Meta Serif Web normal 400 is loaded
- `.wf-metaserifweb-i4-active`: Meta Serif Web italic 400 is loaded
- `.wf-metaserifweb-n7-active`: Meta Serif Web normal 700 is loaded
- `.wf-metaserifweb-i7-active`: Meta Serif Web italic 700 is loaded
- `.wf-metaweb-n4-active`: Meta Web normal 400 is loaded
- `.wf-metaweb-i4-active`: Meta Web italic 400 is loaded
- `.wf-metaweb-n7-active`: Meta Web normal 700 is loaded
- `.wf-metaweb-i7-active`: Meta Web italic 700 is loaded
- `.wf-active`: all enhanced fonts are loaded
