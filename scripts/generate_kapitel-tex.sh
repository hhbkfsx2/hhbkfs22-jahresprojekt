#/bin/bash

# generiert eine Datei, die alle Kapitel enthält
# Nutzung:

DOKU=$(echo $0 | cut -d\_ -f2 | cut -d\. -f1)

rm 8gruppe_*_00_kapitel.tex; for i in {01..09}; do cat 8gruppe_*_$i.tex >> 8gruppe_${DOKU}_00_kapitel.tex; done
