/**
 * Toolkit JavaScript
 */

'use strict';


// Picture element HTML5 shiv
document.createElement( "picture" );
var $ = require('picturefill');


/**
 * Webfontloader
 */
var WebFont = require('webfontloader');

WebFont.load({
    custom: {
      families: ['MetaSerifWeb', 'MetaWeb']
    }
});
