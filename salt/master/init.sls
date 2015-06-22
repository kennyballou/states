include:
  - salt

/etc/salt/master:
  file.managed:
    - source: salt://salt/files/etc/salt/master
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - pkg: salt

salt-master:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/salt/master
      - pkg: salt
