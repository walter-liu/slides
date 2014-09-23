/etc/nginx/conf.d/www.conf:
  file:
    - managed
    - source: salt://conf/dc1/www.conf
    - user: nginx
    - group: nginx
    - require:
      - pkg: nginx
