{% macro code(path, slug) %}
<div class="styleguide-item-code styleguide-item-hidden" data-styleguide-toggle="code">
  <pre><code class="language-markup">{% if slug %}{% include path with {variant: slug} %}{% else %}{% include path %}{% endif %}</code></pre>
</div>
{% endmacro %}

{% macro preview(content, path, slug) %}
<div class="styleguide-item-preview"{% if content.background %} style="background: {{ content.background }};"{% endif %}>
  {% if content.wrapper %}
    <div class="{{ content.wrapper }}">
      {% if slug|default(false) %}{% include path with {variant: slug} %}{% else %}{% include path %}{% endif %}
    </div>
  {% else %}
    {% if slug|default(false) %}{% include path with {variant: slug} %}{% else %}{% include path %}{% endif %}
  {% endif %}
</div>
{% endmacro %}
