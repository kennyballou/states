{% from "udev/map.jinja" import udev with context %}
/etc/udev/rules.d/60-schedulers.rules:
  file.managed:
    - source: salt://system/udev/files/60-schedulers.rules
    - user: root
    - group: root
    - mode: 644
