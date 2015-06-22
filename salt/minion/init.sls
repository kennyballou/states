include:
  - salt

/etc/salt/minion:
  file.managed:
    - source: salt://salt/files/etc/salt/minion
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - pkg: salt

salt-minion:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/salt/minion
      - pkg: salt
