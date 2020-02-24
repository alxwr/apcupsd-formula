# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import apcupsd with context %}

apcupsd-service-clean-service-dead:
  service.dead:
    - name: {{ apcupsd.service.name }}
    - enable: False
