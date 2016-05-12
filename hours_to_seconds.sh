#!/bin/bash

# Script qui permet  de traduire les heures, minutes et secondes en nombre de secondes.
# Les heures, minutes et secondes sont lues au clavier.

IFS=":"       #On définit un séparateur
read -p "Heure:Minutes:Secondes : " h m s     # user prompt; deux options pour faire la lecture
#read -p "Heures :" h
#read -p "Minutes :" m
#read -p "Secondes :" s
let rep=h*3600+m*60+s     #calcul 
echo $rep     

