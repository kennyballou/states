system_xorg_nouveau:
  pkg.latest:
    - pkgs:
      - xf86-video-nouveau
      - mesa

/etc/X11/xorg.conf.d/20-nouveau.conf:
  file.managed:
    - source: salt://system/xorg/files/20-nouveau.conf
    - user: root
    - group: root
    - mode: 644
