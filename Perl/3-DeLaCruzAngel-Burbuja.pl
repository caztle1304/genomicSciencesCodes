@vect;
$cantnum;
$aux;
$flg;
$ctr;
#-cantnum:La cantidad de numeros que el usuario quiere introducir
#-vect:Es el vector donde se van a ordenar los numeros
#-aux:es una variable temporal que guarda uno de los valors que van a cambiar de lugar
#-ctr: contador que delimita los limites del for
#-flg: Bandera que indica el estado de orden y desorden del vector
print "Escriba la cantidad de numeros a ordenar, este programa acepta hasta cien numeros en rango de -20000 a 20000\n";
$cantnum=<STDIN>; #Se escanea la cantidad de numeros a ordenar
if($cantnum>100)
{
 print "El programa no acepta mas de cien numeros"	
}
print "Ingrese los numeros a ordenar, despues de cada numero presione ENTER\n";
for($ctr=0; $ctr<$cantnum; $ctr++) #El limite superior es la cantidad de numeros que se va a ordenar menos uno
#Se le resta uno porque el vector empieza en la posicion cero
{
 $vect[$ctr]=<STDIN>;#Se guardan los numeros en el vector
}
$flg=0; #La bandera inicia en cero, que indica que el vector esta en desorden
while($flg==0)#Mientras el vector este desordenado el ciclo se sigue repitiendo
{
 for($ctr=0; $ctr<$cantnum-1; $ctr++)#El limite superior es la cantidad de numeros menos uno porque al llegar al final
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
print "Los numeros ordenados de forma ascendente son\n";
foreach $aux (@vect)
{
 print "$aux"; #imprime los numeros de forma ascendente
}
