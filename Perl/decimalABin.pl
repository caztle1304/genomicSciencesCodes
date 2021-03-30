@vect;
$cont;
$aux;
$inp;

#-vect: Vector en el cual se van a guardar los unos y ceros que se imprimiran al final
 #-cont: es el contador que va a llevar la cuenta del for, para indicar limites
 #-aux: variable temporal en la que se van a guardar los unos y los ceros para despues meterlos en el vector
 #-inp:es el numero introducido por el usuario 
print "Ingrese numero decimal entero a convertir a binario";
$inp=<STDIN>; #Se escanea el numero introducido por el usuario y se guarda en inp
for($cont=0; $cont<16; $cont++) #En este for se escanean los bits del numero decimal
{
 $aux=($inp&(1<<$cont))>>$cont; #se hace un and con mascara de uno, se hace corrimiento cont veces a la izq y se regresa cont veces a derecha
 #Esto es para obtener solamente unos y ceros de cada posicion del numero decimal
 $vect[15-$cont]=$aux;#Aqui se guardan los unos y ceros en la posicion que les corresponde en el vector
 #Si en el decimal había un uno en la posicion 1, se guardará en la posicion 15 del vector porque se guardan al reves

}
print "El numero $inp convertido a binario es\n";
foreach $aux (@vect) #Imprime los unos y ceros guardados en el vector
{
 print "$aux";	
}

