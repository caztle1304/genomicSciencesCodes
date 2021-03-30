$frst;
$lst;
$half;
$size;
$found;
$inp;
@vect;
$ctr;
$aux;
$flg;
#-frst: variable que indica el comienzo del vector, la casilla que se tomará en cuenta como la primera
 #-lst: variable que indica final del vector, casilla que se tomará en cuenta como la ultima
 #-size: tamaño del vector que será introducido por el usuario
 #-found: bandera para romper el ciclo si ya se encontró el valor
 #-inp: Valor que se va a buscar en el vector
 #-vect: vector de los valores introducidos en el usuario entre los que se buscará el valor
 #-ctr:contador que marca limites en for y que se usa para indicar posiciones en vectores
 #-aux: variable temporal que se usa en el ordenamiento de la burbuja
 #-flg: bandera que marc< si los elementos estan ordenados de forma ascendente o estan desordenados
print "ingrese tamaño del vector\n";
$size=<STDIN>; #el usuario indica el tamaño del vector
print "Ingrese los elementos del vector, despues de cada elemento presione la tecla ENTER\n";
print "Si usted ingresa los elementos en desorden el programa los ordenara en orden ascendente\n";
for($ctr=0; $ctr<$size; $ctr++)
{
 $vect[$ctr]=<STDIN>;	#guarda los elementos del vector en el vector vec
}
$flg=0; #La bandera inicia en cero para que se entre al ciclo while
#el ciclo while de abajo es el ordenamiento por metodo de la burbuja
while($flg==0)#Mientras la bandera que se inició en cero sea falsa, se sigue repitiendo el ciclo, 
# la bandera en cero indica que el vector esta en desorden
{
 for($ctr=0; $ctr<$size-1; $ctr++)#se detiene una posicion antes porque no hay nada contra qué comparar el último valor del vector
 {
  $flg=1; #la bandera indica que está ordenado y si no se cumple la condicion de abajo rompe el ciclo while
  if($vect[$ctr]>=$vect[$ctr+1])#compara posicion de un vector con la siguiente y si la mayor esta a la izquierda hace un intercambio de posicion
  {
    $aux=$vect[$ctr];#la variable temporal toma el valor de la izquierda
   	$vect[$ctr]=$vect[$ctr+1];#la variable de la derecha pasa una posicion a la izquierda
   	$vect[$ctr+1]=$aux;#la variable de la derecha pasa una posicion a la izquierda
   	$flg=0;	#la bandera se vuelce cero para indicar que el vector esta en desorden
  }
 }	
}
print "Ingrese elemento a buscar en el vector\n";
$inp=<STDIN>; #Se ingresa el numero que se va a buscar en el vector
$lst=$size;#al principio se tomará en cuenta el tamaño del vector entero, por lo que la ultima casilla será la ultima que esta ocupada
$found=0;
do
{
  $half=(($lst+$frst)/2);#la mitad del vector es el resultado de sumar la ultima casilla mas la primera y dividirlo entre dos
  #a partir de ir tomando en cuenta casillas diferentes de inicio y final como se indica abajo 
  #el vector principal se irá dividiendo en subvectores

  if($inp>$vect[$half])	#Si el valor a buscar es mayor que el que se encuentra a la mitad del vector se descarta la primera mitad
 #y se queda solamente con la segunda mitad
 {
  $found=0; #la bandera indica que el valor no se ha encontrado
  $frst=$half+1;#La casilla a tomar en cuenta como primera será la siguiente de la que estaba a la mitad
  $lst=$lst;#la casilla a tomar en cuenta como ultima será en un principio la ultima ocupada del vector y posteriormente cambiará según el caso  
 }
 if($inp<$vect[$half])#Si el valor a buscar es menor que el que se encuentra a la mtad del vector se descarta la segunda mitad
 # y se toma en cuenta solo la primera mitad
 {
   $found=0;#La bandera indica que el valor no se ha encontrado
   $frst=$frst;#La casilla a tomar en cuenta como la primera será la primera casilla que esté ocupada
   $lst=$half-1;#la casilla a tomar en cuenta como última es la casilla anterior a la casilla ubicada a la mitad
 }
  if($inp==$vect[$half])#Cuando el valor a buscar esté exactamente a la mitad del subvector que se esté tomando en cuenta se regresa la posicion
  {
   print "Su numero esta en la posicion $half del vector";	
   exit;
  }
  if($lst<$frst)#en el caso de que el valor del final sea menor que el del primero, es decir, haya un sobrelape de subvectores significa 
    #que el valor buscado no está en el vector
  {
   print "El dato a deseado no esta en el vector";
   exit;	 
  }
 }
 until(found==1);
