{% macro generate_staging_yaml() %}

  {# 1. Safely fetch the model list when dbt execution graph is ready #}
  {% set models_to_generate = codegen.get_models(directory='staging', prefix='') %}
  
  {# 2. Pass that list dynamically into the codegen generator #}
  {% set yaml_output = codegen.generate_model_yaml(model_names = models_to_generate) %}
  
  {# 3. Print the resulting text block directly to the CLI console #}
  {{ log(yaml_output, info=True) }}

{% endmacro %}
