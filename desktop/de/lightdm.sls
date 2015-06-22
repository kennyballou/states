desktop_de_lightdm_packages:
  pkg.latest:
    - pkgs:
      - light-locker
      - lightdm
      - lightdm-gtk-greeter

{% for conf_file in ['lightdm.conf', 'lightdm-gtk-greeter.conf'] %}
/etc/lightdm/{{conf_file}}:
  file.managed:
    - source: salt://desktop/de/files/{{conf_file}}
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: packages
{% endfor %}

lightdm:
  service.running:
    - enable: True
    - require:
      - pkg: packages
      - file: '/etc/lightdm/lightdm.conf'
      - file: '/etc/lightdm/lightdm-gtk-greeter.conf'
