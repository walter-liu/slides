redis_host:
{% if grains['domain'] == 'dc1' %}
  redis_dc1_special.dc1a
{% else %}
  redis_ho.{{ grains['domain'] }}
{% endif %}
