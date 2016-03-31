#!/bin/bash

x=1
num=0
a='"'
rm /media/zurdotsg/9016-4EF8/glagla/fich1.txt /media/zurdotsg/9016-4EF8/glagla/final.x3d /media/zurdotsg/9016-4EF8/glagla/finale.x3d
cadena="/media/zurdotsg/9016-4EF8/glagla/final.x3d /media/zurdotsg/9016-4EF8/glagla/finale.x3d"

echo '<?xml version="1.0" encoding="UTF-8"?>
<X3D profile="Immersive" version="3.0">' >>/media/zurdotsg/9016-4EF8/glagla/final.x3d
echo '<?xml version="1.0" encoding="UTF-8"?>
<X3D profile="Immersive" version="3.0">' >>/media/zurdotsg/9016-4EF8/glagla/finale.x3d
   	 for linea in $cadena
  	  do
		echo "	<head/>
		<Scene>
		<Shape>
		<Appearance>
		  <Material diffuseColor='0.50 0.03 0.22'/>
		</Appearance>
		<IndexedFaceSet 
		colorPerVertex='false'
		colorIndex=''
		coordIndex='">>$linea
	done
cat trabajo.obj | grep 'f '>>/media/zurdotsg/9016-4EF8/glagla/fich1.txt 

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
		echo "$suma-1,">>/media/zurdotsg/9016-4EF8/glagla/final.x3d
		echo "$suma-1,">>/media/zurdotsg/9016-4EF8/glagla/finale.x3d
	
		
done < /media/zurdotsg/9016-4EF8/glagla/fich1.txt
	echo "'>
          <Coordinate point='">>/media/zurdotsg/9016-4EF8/glagla/final.x3d
	echo "'>
          <Coordinate point='">>/media/zurdotsg/9016-4EF8/glagla/finale.x3d
rm /media/zurdotsg/9016-4EF8/glagla/fich1.txt

cat trabajo.obj | grep 'v '>>/media/zurdotsg/9016-4EF8/glagla/fich1.txt #sacamos las lineas que
while read line
do 
	lineap=${line:2}
	echo "$lineap,">>/media/zurdotsg/9016-4EF8/glagla/final.x3d
	./a.out $lineap $1 $2 $3 >>/media/zurdotsg/9016-4EF8/glagla/qwe.txt
	prov=""
	while read line2
	do 		
		prov="$prov $line2"
	
	done < /media/zurdotsg/9016-4EF8/glagla/qwe.txt

	
	rm /media/zurdotsg/9016-4EF8/glagla/qwe.txt
	#echo "+++++++$prov,"
		f=$prov;
./aT.out $f $4 $5 $6 >>/media/zurdotsg/9016-4EF8/glagla/qwe.txt
	prov=""
	while read line2
	do 		
		prov="$prov $line2"
	
	done < /media/zurdotsg/9016-4EF8/glagla/qwe.txt
	rm /media/zurdotsg/9016-4EF8/glagla/qwe.txt
	#echo "+++++++$prov,"

	#echo "+++++++$prov,"
	echo "$prov,">>/media/zurdotsg/9016-4EF8/glagla/finale.x3d
	
done < /media/zurdotsg/9016-4EF8/glagla/fich1.txt







	echo "
	'/><Color color='">>/media/zurdotsg/9016-4EF8/glagla/final.x3d
	echo "
	'/><Color color='">>/media/zurdotsg/9016-4EF8/glagla/finale.x3d
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
		dd="1 0 0"
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

	echo "$cadena">>/media/zurdotsg/9016-4EF8/glagla/final.x3d
	echo "$cadena">>/media/zurdotsg/9016-4EF8/glagla/finale.x3d

		echo ",'
	
	
			/>
        </IndexedFaceSet>
      </Shape>
	</Scene>
</X3D>">>/media/zurdotsg/9016-4EF8/glagla/final.x3d
		echo ",'
	
	
			/>
        </IndexedFaceSet>
      </Shape>
	</Scene>
</X3D>">>/media/zurdotsg/9016-4EF8/glagla/finale.x3d
