#!/bin/bash
  gsettings set org.mate.Marco.general compositing-manager false
  kodi
  gsettings set org.mate.Marco.general compositing-manager true

