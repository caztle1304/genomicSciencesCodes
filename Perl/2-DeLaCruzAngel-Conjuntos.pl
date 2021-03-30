@conj1;
@conj2;
$lconj1;
$lconj2;
$ctr;
$ctr2;
$aux;
$oper;
#-conj1: Se van a guardar los valores del primer conjunto
#-conj2:Se guardan los valores del segundo conjunto
#-lconj1:Cantidad de valores que van a guardarse en el conjunto 1
#-lconj2:Cantidad de valores que van a guardarse en el conjunto 2
#-ctr:Contador que marca límites en for
#-aux:Variable temporal que almacena los valores del conjunto 
#-oper:variable para seleccionar la operacion que se va a realizar
print "Este programa hace operaciones entre conjuntos\n";
print "Los elementos del conjunto deben ser numeros enteros positivos con valores de entre cero y cien\n";

for($ctr=0; $ctr<100; $ctr++)#Llena de ceros todos los vectores para indicar ausencia de cualquier numero
{
 $conj1[$ctr]=0;
 $conj2[$ctr]=0;	
}
print "Ingrese cantidad de elementos del primer conjunto\n";
$lconj1=<STDIN>;#Escanea la cantidad de elementos del primer conjunto
if($lconj1>100)#Valida que el usuario no pueda introducir mas de cien elementos
{
 print "El conjunto no puede tener mas de cien elementos";
 exit;	
}
print "Ingrese elementos del primer conjunto\n";
print "Despues de cada elemento presione la tecla ENTER\n";
for($ctr=0; $ctr<$lconj1; $ctr++)
{
 $aux=<STDIN>; #Escanea numero del elemento introducido
 if($aux>100) #Valida que el elemento no sea mayor a cien
 {
 print "Recuerde que los numeros del conunto deben estar en un rango de cero a cien\n";
 exit;	
 }
 if($aux<0)#Valida que el elemento no sea menor a cero
 {
  print "Recuerde que los numeros del conjunto deben estar en un rango de cero a cien";
  exit;	
 }
 $conj1[$aux]=1;#Guarda un uno en la posicion del numero introducido para indicar presencia
 #es decir, si se introduce un 5, se guardara un 1 en la posicion 5 del vector, para indicar presencia de dicho valor
}
print "Ingrese cantidad de elementos del segundo conjunto\n";
$lconj2=<STDIN>;#escanea longitud del segundo conjunto
if($lconj2>100) #Valida que el usuario no pueda introducir mas de cien numeros
{
 print "El conjunto no puede tener mas de cien elementos";
 exit;	
}
print "Ingrese elementos del segundo conjunto\n";
print "Despues de cada elemento presione la tecla ENTER\n";
for($ctr=0; $ctr<$lconj2; $ctr++)
{
 $aux=<STDIN>; #Escanea el valor del elemento del segundo conjunto
 if($aux>100)#Valida que el elemento no sea mayor a cien
 {
 print "Recuerde que los numeros del conunto deben estar en un rango de cero a cien\n";
 exit;	
 }
 if($aux<0)#Valida que el elemento no sea menor a cero
 {
  print "Recuerde que los numeros del conjunto deben estar en un rango de cero a cien";
  exit;	
 }
 $conj2[$aux]=1;#Guarda un uno en la posicion del numero introducido para indicar su presencia
 #es decir, si se introduce un 5, se guardara un 1 en la posicion 5 del vector, para indicar presencia de dicho valor
}
do 
{
 print "Teclee el numero de la operacion que desea realizar\n";
 print "1/Interseccion\n2/Diferencia simetrica\n3/Diferencia asimetrica\n4/Union\n";
 $oper=<STDIN>;#Escanea la operacion que el usuario quiere realizar
 if($oper<1)
 { 
  print "Favor de ingresar un numero valido";
 }
 if($oper>4)
 {
  print "Favor de ingresar un numero valido";	
 }	
}
until(($oper>0)||($oper<5));#Se hace que el ciclo se repita hasta que el usuario ingrese un numero dentro del rango permitido
if($oper==1) #El numero uno corresponde a la operacion interseccion
{
 print "La interseccion de los conjuntos es:\n";	
 for($ctr=0; $ctr<100; $ctr++)	#El for sirve para recorrer ambos vectores
 {
  if($conj1[$ctr]&$conj2[$ctr])#Si hay un uno en ambos vectores, se imprimer la posicion en la cual esta el uno
  {
   print "$ctr ";	
  }	
 }
}
if($oper==2)#EL numero dos corresponde a la diferencia simetrica
{
 print "La diferencia simetrica de los conjuntos es:\n"; 
 for($ctr=0; $ctr<100; $ctr )#Se recorre todo el vector
   {
   if($conj1[$ctr]^$conj2[$ctr]) #se hace un xor para que solo se imprima la posicion en la que esta el uno solo si hay un uno
    {                            #Es decir que se imrpime todo menos la interseccion de los conjuntos
     print "$ctr ";	
    }	
 }
} 
 if($oper==3) #El numero tres corresponde a la diferencia asimetrica
 {
  print "La diferencia asimetrica del primer conjunto es:\n";
  for($ctr=0; $ctr<100; $ctr++)
  {
   if($conj1[$ctr]&~$conj2[$ctr]) #Imprime los elementos que solamente se encuentran en el primer conjunto sin estar en el segundo
   {
    print "$ctr ";
   }
  }
  print "La diferencia asimetrica del segundo conjunto es:\n";
  for($ctr=0; $ctr<100; $ctr++)
  {
   if($conj2[$ctr]&~$conj1[$ctr])#Imprime los elementos que se encuentran solamente en el segundo conjunto sin estar en el primero
   {
    print"$ctr ";	
   }	
  }
}
if($oper==4)#El numero cuatro corresponde a la union de los conjuntps
{#la union de los conjuntos la hice uniendo las dos diferencias asimetricas y la interseccion de los conjuntos
 print "La union de los conjuntos es\n";
 for($ctr=0; $ctr<100; $ctr++) #Esto corresponde a la diferencia asimetrica del primer conjunto
  {
   if($conj1[$ctr]&~$conj2[$ctr])
    {
     print "$ctr ";	
    }	
   }
  for($ctr=0; $ctr<100; $ctr++)#Esto corresponde a la interseccion de los conjuntos
  { 
   if($conj1[$ctr]&$conj2[$ctr])
   {
    print "$ctr ";
   }	 
  }
  for($ctr=0; $ctr<100; $ctr++)#Esto corresponde a la diferencia asimetrica del segundo conjunto
  {
   if($conj2[$ctr]&~$conj1[$ctr])
   {
    print "$ctr ";	
   }	
  }
 }	
