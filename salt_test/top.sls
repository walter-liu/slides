base:
  'www-*':
    - nginx

  # Managed config file.
  #'www-*.dc1':
  #  - dc1.web

  # Add another managed config file
  #'www-*.dc2':
  #  - dc2.web

  # Troubleshooting by salt-call
  #'www-*':
  #  - failed

  # Config by hostname
  'www-*.dc*':
    - web_general.web
