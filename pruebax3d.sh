#!/bin/bash
x=1
num=0
a='"'
rm fich1.txt final.x3d
echo '<?xml version="1.0" encoding="UTF-8"?>
<X3D profile="Immersive" version="3.0">' >>final.x3d
echo "	<head/>
	<Scene>
<Shape>
        <Appearance>
          <Material diffuseColor='0.50 0.03 0.22'/>
        </Appearance>
        <IndexedFaceSet 
	colorPerVertex='false'
	colorIndex=''
	coordIndex='">>final.x3d
cat objeto.obj | grep 'f '>>fich1.txt #sacamos las lineas que

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
		echo "$suma-1,">>final.x3d
	
	
done < fich1.txt
	echo "'>
          <Coordinate point='">>final.x3d
rm fich1.txt

cat objeto.obj | grep 'v '>>fich1.txt #sacamos las lineas que
while read line
do 
	lineap=${line:2}
	./a.out $lineap 100 100 100 >>qwe.txt
	prov=""
	while read line2
	do 		
		prov="$prov $line2"
	
	done < qwe.txt
	rm qwe.txt
	#echo "+++++++$prov,"
	echo "$prov,">>final.x3d
	
	
done < fich1.txt







	echo "
	'/><Color color='">>final.x3d
	cadena='1 0 0'
NUM=1
n=0
dd="0 1 0"
until [ $NUM -gt $num ]; do
	cadena="$cadena,$dd"
    echo "\$NUM: $NUM"
    let NUM=$NUM+1
 let n=$n+1
	if [ $n -eq 0 ]
	then
		dd="1 $RANDOM 0"
	fi
	if [ $n -eq 1 ]
	then
		dd="0 1 0"
	fi
	if [ $n -eq 2 ]
	then
		dd="0 0 1"
	fi
	if [ $n -eq 3 ]
	then
		dd="1 1 0"
		n=0
	fi


done

	echo "$cadena">>final.x3d
		echo ",'
	
	
			/>
        </IndexedFaceSet>
      </Shape>
	</Scene>
</X3D>">>final.x3d
