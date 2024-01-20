#!/bin/bash

# Questions
read -p "Entrez le chemin vers le dossier contenant les pages PNG et JPG : " input_folder

read -p "Entrez le nom du fichier PDF de sortie (avec le .pdf) : " output_pdf

# Conversion des images PNG et JPG en fichiers PDF
for file in "$input_folder"/*.{png,jpg}; do
    if [[ -f "$file" ]]; then
        convert "$file" "${file%.*}.pdf"
    fi
done

# Fusion des fichiers PDF en un seul
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile="$output_pdf" "$input_folder"/*.pdf

# Suppression des fichiers PDF individuels
rm "$input_folder"/*.pdf

echo "Le fichier PDF final a été créé : $output_pdf"
