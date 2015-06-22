{% for file in ["50-backlight.rules",
                "50-hd_power_save.rules",
                "50-lowbat.rules",
                "50-usb_power_save.rules",
                "70-disable_wol.rules",
                "70-wifi-powersave.rules"] %}
/etc/udev/rules.d/{{file}}:
  file.managed:
    - source: salt://system/udev/files/{{file}}
    - user: root
    - group: root
    - mode: 644
{% endfor %}
