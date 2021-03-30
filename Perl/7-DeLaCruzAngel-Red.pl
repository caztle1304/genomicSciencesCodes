$nodos;
$ctr;
$ctr2;
$ctr3;
$ctr4;
$numinterac;
$interac;
$gdo;
$aux;
$clstr;
@red;
@n1;
@n2;
@n3;
@n4;
@n5;
@n6;
@n7;
@n8;
@n9;
@n10;
@red=(@n1, @n2, @n3, @n4, @n5, @n6, @n7, @n8, @n9, @n10);
#-nodos es el numero de nodos que el usuario quiere que haya
#-ctr es un contador que va a permitir limitar fors y recorrer la matriz
#-ctr2: Es contador que permite limitar fors y recorer la matriz
#-ctr3: Es contador que limita fors y recorrer matriz
#-ctr4:Contador que limita fors y recorre matriz
#-Red es la matriz en la que se va a representar la red
#-numinterac: Cantidad de interacciones que tienee un nodo con otros nodos
#-interac: Contra que nodo tiene interaccion un otro nodo
#-gdo:Es acumulador que permite recorrer la matriz y sascar el grado de cada nodo
#-aux:variable temporal que permite obtener la cantidad de interacciones que hya entre vecinos de un nodo
#cada n con su numero es un posible nodo que el usuario puede introducir
print "ingrese la cantidad de nodos que hay\nNo puede haber mas de 10 nodos\n";
$nodos=<STDIN>; #Se ingresa la cantidad de nodos que hay
if($nodos>10) #Se valida que el usuario no quiera introducir mas de 10 nodos
{
print "Le recordamos que no puede haber mas de 10 nodos";
exit;	
}
print "Los nodos deben tener asignado un valor numérico de entre uno y noventa y nueve,\n de modo que los nombres de los nodos seran numeros\n";
print "Ingrese los numeros de los nodos, recuerde que estos deben ser numeros en el rango de 0 a 99\n";
print "Despues de cada nodo presione la tecla enter e ingrese hacia que otros nodos esta conectado\n";
for($ctr=0; $ctr<$nodos+1; $ctr++)  
 {                              #Este conjunto de dos fors anidados llena la matriz con ceros
  for($ctr2=0; $ctr2<$nodos+1; $ctr2++)  #Se llena con ceros con el objetivo de evitar preguntar al usuario todas las posibles interacciones
  {
  $red[$ctr][$ctr2]=0;
  }	
 }
 for($ctr=1; $ctr<$nodos+1; $ctr++)
 {
  $red[0][$ctr]=$ctr;
  $red[$ctr][0]=$ctr;	
 }

for($ctr=1; $ctr<$nodos+1; $ctr++)  #A partir de aquí se sustituyen los ceros por unos en los lugares donde haya interaccion
 { print "Para el nodo $ctr ";
   print "Ingrese cantidad de nodos con los que interacciona\n";
   $numinterac=<STDIN>;
   for($ctr2=1; $ctr2<$numinterac+1; $ctr2++)
   {
   	
   	print "Ingrese nodos con los que interacciona, despues de introducir cada uno presione ENTER\n";
   	$interac=<STDIN>;
   	$red[$ctr][$interac]=1;
   	$red[$interac][$ctr]=1;                 #Se hace una matriz simetrica porque es una red no dirigida
   }
   print "Ingrese siguiente nodo\n";
  } 
  print "La matriz que representa su red es la siguiente:\n";
  for($ctr=0; $ctr<$nodos+1; $ctr++)
  { for($ctr2=0; $ctr2<$nodos+1; $ctr2++)
  	{
      printf "$red[$ctr][$ctr2] "; #Se imprime la red que representa la matriz
    }
    print "\n";
  }
  print "El grado de cada nodo es:\n";
  for($ctr=1; $ctr<$nodos+1; $ctr++)
  {
   $gdo=0; #el acumulador que saca el grado se inicializa en cero despues de cada ciclo
   for($ctr2=1; $ctr2<$nodos+1; $ctr2++)
   {
    if($red[$ctr][$ctr2]==1)
    {
     $gdo+=1;	#Si se encuentra un uno el acumulador aumenta, aumentando el grado
     $aux=0;
   for($ctr3=0; $ctr3<$gdo; $ctr3++)
   {
   	
   	 if(($red[$ctr][$ctr3]==1)&&($red[$ctr2][$ctr3])==1)#Se revisan las interacciones entre los vecinos del nodo, en caso de haber aumenta el acumulador
   	 {
   	  $aux++;	
   	 }	
   	 	
   }
    }	
   }
   
   if($gdo<2)
   {
    $clstr=0; #si el grado es menor a dos el coeficiente es cero porque hay division entre cero
   }
   if($gdo>=2)
   {
   $clstr=2*$aux/($gdo*($gdo-1)); #Si el grado es mayor o igual a dos se hace la formula de coeficiente de clustering
   }
   print "El grado del nodo $ctr es $gdo y su coeficiente de clustering es $clstr\n";
  }	
