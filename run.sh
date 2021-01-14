#!/bin/sh
# This script executes a .jar file in the same folder.
# Version 1 - (C) 2021 - NKN1396

JARFILE=$(find . -name "*.jar")
nohup java -jar "$JARFILE" -Dnogui=true &
