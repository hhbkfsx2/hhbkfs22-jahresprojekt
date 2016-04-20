#/bin/bash

# generiert eine Datei, die alle Kapitel enthält
rm 8gruppe_pflichtenheft_00_kapitel.tex; for i in {01..09}; do cat 8gruppe_pflichtenheft_$i.tex >> 8gruppe_pflichtenheft_00_kapitel.tex; done
