This component makes use of the `datalist` element, which, in concert with the `list` attribute, enables native input suggestions in the browser (a.k.a. predictive typing). As Figure 3.7 shows, browsers that don’t support `datalist` will see the `label`, the `select`, the text “If other, please specify,” and the text field; browsers that support `datalist` will see the `label` and the text field only because the `datalist` element is allowed to contain only `option` elements (which it cleverly plucks from within the `select`).

![](http://d.pr/i/dEhn+)  
Two interpretations of the same markup: a browser that understands 'datalist' displays one thing (above) and a browser that doesn’t displays something else (below).
