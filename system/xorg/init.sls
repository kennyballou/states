system_xorg_packages:
  pkg.latest:
    - pkgs:
      - xorg-xrdb
      - xorg-xev
      - xorg-server-xephyr
      - xorg-xinit

/etc/X11/xorg.conf.d/50-keyboard-layout.conf:
  file.managed:
    - source: salt://system/xorg/files/50-keyboard-layout.conf
    - user: root
    - group: root
    - mode: 644
