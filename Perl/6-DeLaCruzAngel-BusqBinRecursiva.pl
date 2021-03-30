sub busq
{
	#-refvect:Donde se va a guardar la copia del vector original que entra en la funcion
	#inp1: variable que va a tomar el valor del input del usuario
	#frst1:variable que tomará la casillla que se tomara como la inicial del vector o subvector
	#lst1:variable que toma la casilla que se tomará como la final del vector o subvector
	#half1:posicion que se tomará en cuenta como la mitad del vector o subvector
 my ($refvect, $inp1, $frst1, $lst1)=@_;#Se reciben las variables desde donde se llamo la funcion
 my @vect1=@{$refvect};#Se hace paso por referencia del vector para obtener todos los valores del vector original
 my $half1;
 $half1=(($lst1+$frst1)/2);
 if($inp1==$vect1[$half1])#el caso base es tener el valor en la posición de la mitad del vector, 
 #caso en el cual se regresa la posición de la mitad
 {
  return ($half1);
 }
 if($lst1<$frst1)#si hay un sobrelape de vectores en el cual la posicion que se toma como la final es menor a 
 #la primera es que el valor no está
 {
  return -1;	
 }
 if($inp1>$vect1[$half1])#Si el valor a buscar es mayor que el de la mitad se lleva a cabo lo siguiente
 {
  return (&busq(\@vect1, $inp1, $half1+1, $lst1));#Se llama a la misma función en la cual se tomará la posición de la 
  #mitad mas uno como el inicio del subvector y 
  #la posicion final queda sin cambios
 }
 if($inp1<$vect1[$half1])#Si el valor a buscar es menor que el valor de la mitad del vector se hace lo siguiente
 {
  return (&busq(\@vect1, $inp1, $frst1, $half1-1));
  #Se llama a la misma función en la que se tomará la posicion de la mitad menos uno como la posicion final del subvector y la posición 
  #inicial queda sin cambios
 }
 }
 {
my @vect;
my $ctr;
my $flg;
my $aux;
my $inp;
my $frst;
my $size;
my $res;
#-vect: el vector que contendrá los valores introducidos por el usuario
#-ctr:contador que marca los límites delos for y señala posiciones en el vector
#-flg:bandera que indica estado de orden/desorden de los valores del vector
#-aux:variable temporal que ayuda a efectuar el intercambio de posiciones entre dos valores
#-inp:Numero que el usuario desea encontrar en el vector
#-res:variable que guarda el valor regresado por la función
#frst:La primera casilla del vector
#-size:Tamaño del vector que el usuario va a llenar
print "Ingrese tamaño del vector";
$size=<STDIN>; #El usuario ingresa el tamaño del vector
print "Ingrese elementos del vector, despues de cada elemento presione ENTER\n";
print "Si usted ingresa los numeros en desorden, el programa los ordenara de forma ascendente automaticamente\n";
for($ctr=0; $ctr<$size; $ctr++)
{
 $vect[$ctr]=<STDIN>;	
}
$flg=0; #La bandera inicia en cero, que indica que el vector esta en desorden
while($flg==0)#Mientras el vector este desordenado el ciclo se sigue repitiendo
{
 for($ctr=0; $ctr<$size-1; $ctr++)#El limite superior es la cantidad de numeros menos uno porque al llegar al final
  #el numero que esta en la ultima posicion no puede ser comparado con nada, pues no hay nada adelante de el
 {
  $flg=1; #La bandera se vuelve positiva, que indica que esta ordenado, y si la condicion de abajo no se cumple sale del ciclo while
  if($vect[$ctr]>=$vect[$ctr+1])#Si la posicion del vector es mayor que la posicion siguiente se efectua el intercambio de lugares
  {
    $aux=$vect[$ctr];#La variable temporal aux toma el valor del numero mayor
   	$vect[$ctr]=$vect[$ctr+1]; #El numero menor pasa una posicion atras
   	$vect[$ctr+1]=$aux; #La variable temporal deposita el valor una casilla adelante de donde estaba originalmente
   	$flg=0;	#La bandera se vuelve cero pues el vector esta en desorden
  }
 }	
}
print "Ingrese numero a buscar en el vector\n";
$inp=<STDIN>; #El usuario ingresa el numero que quiere buscar en el vector introducido
$frst=0;
$res=&busq(\@vect, $inp, $frst, $size);  
if($res==-1)#Si la función regresa un valor de -1 significa que el valor no está en el vector, por lo que se imprime el mensaje correspondiente
{
 print "El numero que busca no está en el vector";	 
}
else 
{
 print "Su numero esta en la posicion $res"; 
 #Si el valor sí esta en el vector se imprime el mensaje correspondiente junto con la posición en la que está
}

}