/etc/nginx/conf.d/www.conf:
  file:
    - managed
    - source: salt://conf/dc2/www.conf
    - user: nginx
    - group: nginx
    - require:
      - pkg: nginx
