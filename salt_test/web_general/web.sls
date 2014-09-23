# Example: Grain configure config file location
/etc/nginx/conf.d/www.conf:
  file:
    - managed
    - source: salt://conf/{{ grains['domain'] }}/www.conf
    - user: nginx
    - group: nginx
    - mode: 644
    - require:
      - pkg: nginx

# Example: Pillar configure config file
/etc/nginx/conf.d/redis.conf:
  file:
    - managed
    - source: salt://conf/www_redis.conf.template
    - user: nginx
    - group: nginx
    - mode: 644
    - require:
      - pkg: nginx
    - template: jinja
