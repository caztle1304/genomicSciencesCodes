@numero;
#numero es el vector donde se van a guardar los valores 
print "Este es un programa para convertir un numero a letra, el numero puede ser de hasta seis cifras\n";
print "Ingrese centenas de millar";
$numero[0]=<STDIN>;#Se guardan las centenas de millar en la posicion cero del vector
if(($numero[0]<0)||($numero[0]>9))
{
 print "Favor de ingresar un numero valido";#Se valida que el usuario haya ingresado numeros entre 0 y 9
 exit;	
}
print "Ingrese decenas de millar";
$numero[1]=<STDIN>; #Se guardan las decenas de millar en la posicion uno del vector
if(($numero[1]<0)||($numero[1]>9))
{
 print "Favor de ingresar un numero valido";#Se valida que el usuario haya ingresado numeros entre 0 y 9
 exit;	
}
print "Ingrese unidades de millar";
$numero[2]=<STDIN>; #Se guardan las unidades de millar en la posicion dos del vector
if(($numero[2]<0)||($numero[2]>9))
{
 print "Favor de ingresar un numero valido";#Se valida que el usuario haya ingresado numeros entre 0 y 9
 exit;	
}
print "Ingrese centenas";
$numero[3]=<STDIN>; #Se guardan las centenas en la posicion tres del vector
if(($numero[3]<0)||($numero[3]>9))
{
 print "Favor de ingresar un numero valido";#Se valida que el usuario haya ingresado numeros entre 0 y 9
 exit;	
}
print "Ingrese decenas";
$numero[4]=<STDIN>; #Se guardan las decenas en la posicion 4 del vector
if(($numero[4]<0)||($numero[4]>9))
{
 print "Favor de ingresar un numero valido";#Se valida que el usuario haya ingresado numeros entre 0 y 9
 exit;	
}
print "Ingrese unidades";
$numero[5]=<STDIN>; #Se guardan las unidades en la posicion 5 del vector
if(($numero[5]<0)||($numero[5]>9))
{
 print "Favor de ingresar un numero valido";#Se valida que el usuario haya ingresado numeros entre 0 y 9
 exit;	
}
#Aqui empiezan las excepciones de las centenas de millar
if(($numero[0]==1)&&($numero[1]==0)&&($numero[2]==0)) #Caso especial
{
 print "Cien mil ";	
 goto LABEL; #Salta todo el proceso hasta las centenas
}
if(($numero[0]==2)&&($numero[1]==0)&&($numero[2]==0))#Caso especial
{
 print "Doscientos mil ";	
 goto LABEL; #Salta todo el proceso hasta las centenas
}
if(($numero[0]==3)&&($numero[1]==0)&&($numero[2]==0))#Caso especial
{
 print "Trescientos mil ";	
 goto LABEL;#Salta todo el proceso hasta las centenas
}
if(($numero[0]==4)&&($numero[1]==0)&&($numero[2]==0))#Caso especial
{
 print "Cuatrocientos mil ";
 goto LABEL;#Salta todo el proceso hasta las centenas	
}
if(($numero[0]==5)&&($numero[1]==0)&&($numero[2]==0))#Caso especial
{
 print "Quinientos mil ";	
 goto LABEL;#Salta todo el proceso hasta las centenas
}
if(($numero[0]==6)&&($numero[1]==0)&&($numero[2]==0))#Caso especial
{
 print "Seiscientos mil ";
 goto LABEL;#Salta todo el proceso hasta las centenas	
}
if(($numero[0]==7)&&($numero[1]==0)&&($numero[2]==0))#Caso especial
{
 print "Setecientos mil ";	
 goto LABEL;#Salta todo el proceso hasta las centenas
}
if(($numero[0]==8)&&($numero[1]==0)&&($numero[2]==0))#Caso especial
{
 print "Ochocientos mil ";	
 goto LABEL;#Salta todo el proceso hasta las centenas
}
if(($numero[0]==9)&&($numero[1]==0)&&($numero[2]==0))#Caso especial
{
 print "Novecientos mil ";	
 goto LABEL;#Salta todo el proceso hasta las centenas
}
else #En caso de no cumplirse ninguno de los casos especiales de millares se imprime lo correspondiente a centenas de millar
 {
 if($numero[0]==0)
 {
  print "";	
 } 
 if($numero[0]==1)
 {
  print "Ciento ";	
 }
 if($numero[0]==2)
 {
  print "Doscientos ";	
 }	
 if($numero[0]==3)
 {
  print "Trescientos ";	
 }
 if($numero[0]==4)
 {
 print "Cuatrocientos ";	
 }
 if($numero[0]==5)
 {
  print "Quinientos ";	
 }
 if($numero[0]==6)
 {
  print "Seiscientos ";	
 }
 if($numero[0]==7)
 {
  print "Setecientos ";	   
 }
 if($numero[0]==8)
 {
  print "Ochocientos ";	 
 }
 if($numero[0]==9)
 {
  print "Novecientos ";	
 }
if(($numero[1]==1)&&($numero[2]==0))#Caso especial
 {
  print "Diez mil ";	
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==1)&&($numero[2]==1))#Caso especial
 {
  print "Once mil ";	
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==1)&&($numero[2]==2))#Caso especial
 {
  print "Doce mil ";
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==1)&&($numero[2]==3))#Caso especial
 {
  print "Trece mil ";	
  goto LABEL;#Salta todo el proceso hasta las centenas
 }	
 if(($numero[1]==1)&&($numero[2]==4))#Caso especial
 {
  print "Catorce mil ";
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==1)&&($numero[2]==5))#Caso especial
 {
  print "Quince mil ";	
  goto LABEL;#Salta todo el proceso hasta las centenas
 }	
 if(($numero[1]==2)&&($numero[2]==0))#Caso especial
 {
  print "Veinte mil ";	
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==3)&&($numero[2]==0))#Caso especial
 {
  print "Treinta mil ";
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==4)&&($numero[2]==0))#Caso especial
 {
  print "Cuarenta mil ";
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==5)&&($numero[2]==0))#Caso especial
 {
  print "Cincuenta mil ";	
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==6)&&($numero[2]==0))#Caso especial
 {
  print "Sesenta mil ";
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==7)&&($numero[2]==0))#Caso especial
 {
  print "Setenta mil ";
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==8)&&($numero[2]==0))#Caso especial
 {
  print "Ochenta mil ";
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 if(($numero[1]==9)&&($numero[2]==0))#Caso especial
 {
  print "Noventa mil ";
  goto LABEL;#Salta todo el proceso hasta las centenas
 }
 else #en caso de no cumplirse ningun caso especial se imprime lo correspondiente a las decenas de millar
 {
  if($numero[1]==0)
  {
   print "";	
  }
  if($numero[1]==1)
  {
   print "Dieci";	
  }
  if($numero[1]==2)
  {
   print "Veinti";	
  }
  if($numero[1]==3)
  {
   print "Treinta y ";	
  }
  if($numero[1]==4)
  {
   print "Cuarenta y ";	 
  }
  if($numero[1]==5)
  {
   print "Cincuenta y ";	
  }
  if($numero[1]==6)
  {
   print "Sesenta y ";	
  }
  if($numero[1]==7)
  {
   print "Setenta y ";	
  }
  if($numero[1]==8)
  {
   print "Ochenta y ";	
  }
  if($numero[1]==9)
  {
   print "Noventa y ";	
  }
  #A partir de aquí se imprime lo correspondiente a unidades de millar
  if($numero[2]==0)
  {
   print "";	
  }
  if($numero[2]==1)
  {
   print "Un mil ";	 
  }
  if($numero[2]==2)
  {
   print "Dos mil ";	
  }
  if($numero[2]==3)
  {
   print "Tres mil ";	
  }
  if($numero[2]==4)
  {
   print "Cuatro mil ";	
  }
  if($numero[2]==5)
  {
   print "Cinco mil ";	
  }
  if($numero[2]==6)
  {
   print "Seis mil ";	
  }
  if($numero[2]==7)
  {
   print "Siete mil ";	
  }
  if($numero[2]==8)
  {
   print "Ocho mil ";	
  }
  if($numero[2]==9)
  {
   print "Nueve mil ";	
  }
 }
}

LABEL: #Aqui salta el proceso en caso de cumplirse alguno de los casos especiales de millares
#Aqui estan los casos especiales de las centenas 
if(($numero[3]==1)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Cien ";	
 exit; #Termina el programa
}
if(($numero[3]==2)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Doscientos ";
 exit;	#Termina el programa
}
if(($numero[3]==3)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Trescientos ";	
 exit; #Termina el programa
}
if(($numero[3]==4)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Cuatrocientos ";
 exit;	#Termina el programa
}
if(($numero[3]==5)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Quinientos ";	
 exit; #Termina el programa
}
if(($numero[3]==6)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Seiscientos ";	
 exit; #Termina el programa
}
if(($numero[3]==7)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Setecientos ";
 exit;	
}
if(($numero[3]==8)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Ochocientos ";
 exit;	#Termina el programa
}
if(($numero[3]==9)&&($numero[4]==0)&&($numero[5]==0))#Caso especial
{
 print "Novecientos ";
 exit;	#Termina el programa
}
else #Si no se cumplen las excepciones de las centenas se pasa Aqui
#Se imprime lo corrrespondiente a las centenas
{
 if($numero[3]==0)
 {
  print "";	
 } 
 if($numero[3]==1)
 {
  print "Ciento ";	
 }
 if($numero[3]==2)
 {
  print "Doscientos ";	
 }	
 if($numero[3]==3)
 {
  print "Trescientos ";	
 }
 if($numero[3]==4)
 {
 print "Cuatrocientos ";	
 }
 if($numero[3]==5)
 {
  print "Quinientos ";	
 }
 if($numero[3]==6)
 {
  print "Seiscientos ";	
 }
 if($numero[3]==7)
 {
  print "Setecientos ";	   
 }
 if($numero[3]==8)
 {
  print "Ochocientos ";	 
 }
 if($numero[3]==9)
 {
  print "Novecientos ";	
 }
 #Aqui empiezan los casos especiales de decenas
if(($numero[4]==1)&&($numero[5]==0))#Caso especial
 {
  print "Diez ";	
 exit;#Termina el programa
 }
 if(($numero[4]==1)&&($numero[5]==1))#Caso especial
 {
  print "Once ";	
  exit;#Termina el programa
 }
 if(($numero[4]==1)&&($numero[5]==2))#Caso especial
 {
  print "Doce";
  exit;#Termina el programa
 }
 if(($numero[4]==1)&&($numero[5]==3))#Caso especial
 {
  print "Trece ";	
  exit;#Termina el programa
 }	
 if(($numero[4]==1)&&($numero[5]==4))#Caso especial
 {
  print "Catorce";
  exit;#Termina el programa
 }
 if(($numero[4]==1)&&($numero[5]==5))#Caso especial
 {
  print "Quince";	
  exit;#Termina el programa
 }	
 if(($numero[4]==2)&&($numero[5]==0))#Caso especial
 {
  print "Veinte ";	
  exit;#Termina el programa
 }
 if(($numero[4]==3)&&($numero[4]==0))#Caso especial
 {
  print "Treinta ";
  exit;#Termina el programa
 }
 if(($numero[4]==4)&&($numero[5]==0))#Caso especial
 {
  print "Cuarenta ";
  exit;#Termina el programa
 }
 if(($numero[4]==5)&&($numero[5]==0))#Caso especial
 {
  print "Cincuenta";	
  exit;#Termina el programa
 }
 if(($numero[4]==6)&&($numero[5]==0))#Caso especial
 {
  print "Sesenta";
 exit;#Termina el programa
 }
 if(($numero[4]==7)&&($numero[5]==0))#Caso especial
 {
  print "Setenta";
  exit;#Termina el programa
 }
 if(($numero[4]==8)&&($numero[5]==0))#Caso especial
 {
  print "Ochenta ";
  exit;#Termina el programa
 }
 if(($numero[4]==9)&&($numero[5]==0))#Caso especial
 {
  print "Noventa";
  exit;#Termina el programa
 }
 else #Si no se cumple ningun caso especial se imprime lo correspondiente a las decenas
 {
  if($numero[4]==0)
  {
   print "";	
  }
  if($numero[4]==1)
  {
   print "Dieci";	
  }
  if($numero[4]==2)
  {
   print "Veinti";	
  }
  if($numero[4]==3)
  {
   print "Treinta y ";	
  }
  if($numero[4]==4)
  {
   print "Cuarenta y ";	 
  }
  if($numero[4]==5)
  {
   print "Cincuenta y ";	
  }
  if($numero[4]==6)
  {
   print "Sesenta y ";	
  }
  if($numero[4]==7)
  {
   print "Setenta y ";	
  }
  if($numero[4]==8)
  {
   print "Ochenta y ";	
  }
  if($numero[4]==9)
  {
   print "Noventa y ";	
  }
  #Si no se cumple ningun caso especial se imprime lo correspondiente a las unidades
  if($numero[5]==0)
  {
   print "";	
  }
  if($numero[5]==1)
  {
   print "Uno";	 
  }
  if($numero[5]==2)
  {
   print "Dos ";	
  }
  if($numero[5]==3)
  {
   print "Tres  ";	
  }
  if($numero[5]==4)
  {
   print "Cuatro ";	
  }
  if($numero[5]==5)
  {
   print "Cinco  ";	
  }
  if($numero[5]==6)
  {
   print "Seis ";	
  }
  if($numero[5]==7)
  {
   print "Siete ";	
  }
  if($numero[5]==8)
  {
   print "Ocho ";	
  }
  if($numero[5]==9)
  {
   print "Nueve ";	
  }
 }
}