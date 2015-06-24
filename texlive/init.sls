{% from "texlive/map.jinja" import texlive with context %}
texlive:
  pkg.latest:
    - pkgs:
      - texlive-bin
      - texlive-core
      - texlive-latexextra
      - texlive-genericextra
      - texlive-bibtexextra
      - texlive-fontsextra
      - texlive-formatsextra
      - texlive-htmlxml
      - texlive-humanities
      - texlive-pictures
      - texlive-plainextra
      - texlive-pstricks
      - texlive-publishers
      - texlive-science
      - ktikz
