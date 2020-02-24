# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import apcupsd with context %}

apcupsd-package-install-pkg-installed:
  pkg.installed:
    - name: {{ apcupsd.pkg.name }}
