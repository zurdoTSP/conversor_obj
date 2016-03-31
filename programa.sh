#!/bin/bash
x=1
num=0
rm fich1.txt final.wrl
echo "#VRML V2.0 utf8">>final.wrl
			echo "Shape {
	appearance Appearance { 
		material Material { 
			diffuseColor 4 0.21 9
				   } 
				}
geometry IndexedFaceSet {
	solid FALSE

	coord Coordinate {
		point [">>final.wrl
cat Motherboard.obj | grep 'v '>>fich1.txt #sacamos las lineas que
while read line
do 
	lineap=${line:2}
	./aT.out $lineap 100 100 100 >>qwe.txt
	prov=""
	while read line2
	do 		
		prov="$prov $line2"
	
	done < qwe.txt
	rm qwe.txt
	#echo "+++++++$prov,"
	echo "$prov,">>final.wrl
	
	
done < fich1.txt
	echo "		]
		}
	coordIndex [">>final.wrl
rm fich1.txt

cat Motherboard.obj | grep 'f '>>fich1.txt #sacamos las lineas que

while read line
do 
	lineap=${line:2}
	suma=''
		while IFS=' ' read -ra ADDR; do
		    for i in "${ADDR[@]}"; do
			nombres2="${i%%/*}"
			q=`expr $nombres2 - 1`
			suma="$suma $q,"
			let num=num+1

		    done
			
		done <<< "$lineap"
		echo "$suma-1,">>final.wrl
	
	
done < fich1.txt
echo "	]
                        
			color Color {
				color [
					0 1 1,
					0.7 0.18 0.8,
					0 1 0.5,
				
			
				]
			}
		colorPerVertex FALSE
 		colorIndex[">>final.wrl
	CONTADOR=1
	cadena='0'
	echo "$num"
NUM=1
n=0
until [ $NUM -gt $num ]; do
	cadena="$cadena,$n"
    echo "\$NUM: $NUM"
    let NUM=$NUM+1
 let n=$n+1
	if [ $n -eq 3 ]
	then
		n=0
	fi


done

	echo "$cadena">>final.wrl
		echo "]
			
		}		
}">>final.wrl
