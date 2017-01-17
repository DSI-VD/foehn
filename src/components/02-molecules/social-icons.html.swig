---
title: Social Icons
name: social-icons
collection: molecules
notes: |
  You can use all the [Fontawesome icons](http://fontawesome.io/icons/) in these icons.

  Add `.float-xs-right` to the print icon to have it float to the right.
---
<h2 class="{% if social_icons_header_hidden %}sr-only{% else %}vd-section-title mb-1{% endif %}">Partager</h2>

{% if social_icons_in_footer %}
  <div class="row mt-2">
    <div class="col-sm-8">
{% endif -%}
<ul class="list-inline vd-social-icons">
  <li class="list-inline-item">
    <a class="vd-social-icon" href="#0" title="Mail" aria-label="Send us a Mail"><span class="fa fa-envelope" aria-hidden="true"></span></a>
  </li>
  <li class="list-inline-item">
    <a class="vd-social-icon" href="#0" title="Twitter" aria-label="Like us on Twitter"><span class="fa fa-twitter" aria-hidden="true"></span></a>
  </li>
  <li class="list-inline-item">
    <a class="vd-social-icon" href="#0" title="Facebook" aria-label="Like us on Facebook"><span class="fa fa-facebook" aria-hidden="true"></span></a>
  </li>
  <li class="list-inline-item">
    <a class="vd-social-icon" href="#0" title="Linkedin" aria-label="Like us on Linkedin"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
  </li>
  <li class="list-inline-item hidden-lg-up">
    <a class="vd-social-icon" href="#0" title="WhatsApp" aria-label="Like us on WhatsApp"><span class="fa fa-whatsapp" aria-hidden="true"></span></a>
  </li>
  <li class="list-inline-item{% if social_icons_in_footer %} float-xs-right{% endif %}">
    <a class="vd-social-icon" href="#0" title="Print" aria-label="Print the current page"><span class="fa fa-print" aria-hidden="true"></span></a>
  </li>
</ul>
{%- if social_icons_in_footer %}
    </div>
  </div>
{% endif -%}
