#/bin/bash

# generiert eine Datei, die alle Kapitel enthält

DOKU=$1

rm 8gruppe_*_00_kapitel.tex; for i in {01..09}; do cat 8gruppe_*_$i.tex >> 8gruppe_${DOKU}_00_kapitel.tex; done
