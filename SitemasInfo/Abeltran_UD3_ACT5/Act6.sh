#!/bin/bash

echo "Elige un personaje, Samurai, Prisionero o Profeta"
read personaje

if [ "$personaje" = Samurai ]; then
		echo "Tu personaje es un Samurai"
		
elif [ "$personaje" = Prisionero ]; then
		echo "Tu personaje es un Prisionero"
		
elif [ "$personaje" = Profeta ]; then
		echo "Tu personaje es una Profeta"
		
fi

numR=$((RANDOM % 2))

echo "Se viene un monstruo. preparate para una batalla."

echo -n "Elige un numero de 0 a 1 para matar lo: "
read num

if [ "$num" -eq "$numR" ]; then
        echo "El monstruo ha muerto, Enorabuena!!"
else
        echo "Has muerto."
        exit 1
fi

numRB=$((RANDOM % 10))

echo "Se viene otro monstruo, es un BOSS"

echo -n "Elige un numero de 0 a 9 para matar lo: "
read numB

if [ "$EUID" -eq 0 ]; then
        echo "El BOSS ha muerto por que eres ROOT, Enorabuena!!!"
		exit 1
elif [ "$numB" = "ocell" ]; then
        echo "El BOSS ha muerto con la clave secreta, Enorabuena!!!"
		exit 1
elif [ "$numB" -eq "$numRB" ]; then
        echo "El BOSS ha muerto, Enorabuena!!!"
else
        echo "Has muerto"
fi