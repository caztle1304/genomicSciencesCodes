#include<stdio.h>
int main()
{
 int vect[16], cont=0, aux=0, inp=0;
 /*-vect: Vector en el cual se van a guardar los unos y ceros que se imprimiran al final
 -cont: es el contador que va a llevar la cuenta del for, para indicar limites
 -aux: variable temporal en la que se van a guardar los unos y los ceros para despues meterlos en el vector
 -inp:es el numero introducido por el usuario*/
 printf("Ingrese numero a convertir a binario en un rango de 0 a 65535");
 scanf("%d", &inp);  /*Escanea numero introducido y se guarda en variable inp*/
 for(cont=0; cont<16; cont++) /*Este for convierte decimal a binario y lo mete en vector*/
 {
 	aux=(inp&(1<<cont))>>cont; /*Escanea los bits de cada posicionpara saber cual es el binario del numero,
 	 se hace un and conmascara de uno y corrimiento 'cont' veces a la izquierda 
 	y se regresa a la derecha 'cont' veces para solo obtener unos y ceros y no potencias de dos*/
 	 vect[15-cont]=aux; /*Cada bit del numero decimal lo va guardando en el vector uno por uno de derecha a izquierda*/
 	/*Se guarda en la posición original en la que estaba en el numero decimal*/
 }
 printf("EL numero decimal %d convertido a binario es ", inp);

 for(cont=0; cont<16; cont++)
 {
 	printf("%d", vect[cont]); /*imprime el binario del numero de uno en uno de izquierda a derecha*/
 }
 return 0;
}
