nginx:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - reload: True
    - watch:
      - file: /etc/nginx/conf.d/* 

