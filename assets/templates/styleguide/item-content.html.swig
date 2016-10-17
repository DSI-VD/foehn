{% macro default(type, content) %}
<div class="styleguide-description clearfix" data-styleguide-toggle="notes">
  {% set path = '../../components/' + type + 's/' + content.name + '.html.swig' %}

  {% if content.bootstrap %}
    <a class="btn btn-secondary btn-sm pull-xs-right m-l-1" href="{{ content.bootstrap }}"><span class="fa fa-book" aria-hidden="true"></span> Bootstrap doc</a>
  {% endif %}

  {% if content.notes %}<div class="styleguide-item-notes">
    {{content.notes|markdown|raw}}
  </div>{% endif %}
</div>
<div class="styleguide-item-preview"{% if content.background %} style="background: {{ content.background }};"{% endif %}>
    {% if content.wrapper %}
      <div class="{{ content.wrapper }}">
        {% include path %}
      </div>
    {% else %}
      {% include path %}
    {% endif %}
  </div>
  <div class="styleguide-item-code styleguide-item-hidden" data-styleguide-toggle="code">
    <pre><code class="language-markup">{% include path %}</code></pre>
  </div>
{% endmacro %}
