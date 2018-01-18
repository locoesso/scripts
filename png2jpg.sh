#!/bin/bash
for file in *.png; do convert $file $file.jpg; done
