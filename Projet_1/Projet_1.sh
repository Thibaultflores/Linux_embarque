# !/bin/bash

echo "Entrez 2 nombres "
read a
read b

echo "choisissez l'operation a faire :"
echo "1 Addition"
echo "2 soustraction"
echo "3 multiplication"
echo "4 division"
echo "5 puissance"

read opperande

case $opperande in
1)
	echo $(($a + $b))
	;;
2)
	echo $(($a - $b))
	;;
3)
	echo $(($a * $b))
	;;
4)
	echo "scale=2; $a / $b" | bc
	;;
5)
	echo $(($a ** $b))	
	;;
esac

	
	
