#!/bin/bash
# 1 - Ce script affiche le nom du script.
# 2 - Il a un paramètre ( passé à la ligne de commande )
# 3 - Il vérifie si ce paramètre est un fichier qui existe et que c'est un fichier ordinaire (-f).
# 4 - Il vérifie si c'est un fichier texte (file et grep).
# 5 - Si oui, il affiche le contenu (less).
#
echo "Nom du script: $0 "  #variable prédéfinie qui contient le nom du script
# Vérifier s'il y a un paramètre
#
if [ $# -ne 1 ]
then
	echo "Usage : $0 nom de fichier"
	exit 1 # Pas de paramètre
fi

# Si le fichier existe, v?rifier si c'est une fichier texte et afficher son contenu. 

if [ -f "$1" ]
then
	file "$1"  | grep "text$" && cat "$1" || echo " Le fichier $1 n'est pas un fichier texte "
else
	echo "Le fichier $1  n'existe pas."
	exit 2 			# Le fichier n'existe pas
fi
