{% from "salt/map.jinja" import salt with context %}
salt:
  pkg:
    - latest
    - name: {{salt.package_name}}
