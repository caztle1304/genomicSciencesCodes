@vect;
$dig;
$out;
$ctr;
$aux;
#-vec: Vector donde se van a guardar los unos y ceros introducidos por el usuario
  #-out:Variable en la cual se guardará el valor en decimal del numerobinario introducido, es un acumulador
  #-ctr:lleva la cuenta de las veces que se repite el for
  #-dig:la cantidad de digitos que tiene el numero binario
print "Ingrese cantidad de digitos que tiene su numero";
$dig=<STDIN>; #El usuario ingresa la cantidad de digitos que tiene su numero
print "Introduzca el numero a convertir a decimal, introduzca digito por digito de izquierda a derecha y despues de cada digito presione la tecla ENTER\n ADVERTENCIA: El numero puede contener un maximo de dieciseis digitos\n";
for($ctr=0; $ctr<$dig; $ctr++)
{
 $vect[$ctr]=<STDIN>;	#Se escanean los digitos del numero binario y se guardan en el vector
 if(($vect[$ctr]<0)||($vect[$ctr]>1)) #Se valida que el usuario solo ingrese unos y ceros
 {
  printf("Favor de solo ingresar unos y ceros\n");	
 }
}
for($ctr=0; $ctr<$dig+1; $ctr++)
{
 $out|=@vect[$dig-$ctr]<<$ctr;
 #En out que es un acumulador se hace un corrimiento con uno o cero, depende de lo que haya en la posicion ctr
 #Se usa un or, para que en caso de que haya un uno, se guarde un uno aunque haya un cero en el otro bit
 #Si hay un cero, ce guardara un cero debido al or
 #out es un acumulador para que no pierda la informacion que se va guardando en el
 #el limite superior es la cantidad de digitos mas uno, para que cuando se iguale en la posicion del vector, llegue a la posicion cero
 #Los unos y ceros se sacan de derecha a izquierda para que no se guarden en el acumulador al reves
}
print "El numero binario\n";
foreach $aux (@vect)
{
 print "$aux"; #Se imprime el vector del numero binario que el usuario introdujo
}
print "\n";
print "Es $out en decimal"; #se imprime el acumulador de bits con el numero ya convertido a decimal
