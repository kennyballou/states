{% from "system/audio/jack/map.jinja" import jack with context %}
jack_packages:
  pkg.latest:
    - pkgs:
      - qjackctl
      - jack2
      - lash

/etc/asound.conf:
  file.managed:
    - source: salt://system/audio/jack/files/etc/asound.conf
    - user: root
    - owner: root
    - mode: 644
    - require:
      - pkg: jack_packages
