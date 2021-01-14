#!/bin/sh
JARFILE=$(find . -name "*.jar")
nohup java -jar "$JARFILE" -Dnogui=true &
