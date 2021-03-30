#include<stdio.h>
int main()
{
  int vec[16], out=0, ctr, dig;
  /*-vec: Vector donde se van a guardar los unos y ceros introducidos por el usuario
  -out:Variable en la cual se guardará el valor en decimal del numerobinario introducido, es un acumulador
  -ctr:lleva la cuenta de las veces que se repite el for
  -dig:la cantidad de digitos que tiene el numero binario*/
  printf("Ingrese la cantidad de digitos que tiene su numero\n ADVERTENCIA: El numero puede contener un maximo de dieciseis digitos\n");
  scanf("%d", &dig); /*El usuario ingresa la cantidad de digitos que tiene su numero*/
  printf("Introduzca el numero a convertir a decimal, introduzca digito por digito de izquierda a derecha y despues de cada digito presione la tecla ENTER\n");
  	
  for(ctr=0; ctr<16; ctr++)
    {
      vec[ctr]=0;  /*se llena todo el vector con ceros para eliminar lo que tiene la memoria*/
    }
  for(ctr=0; ctr<dig; ctr++)
    {
      scanf("%d", &vec[ctr]); /*Se escanean los digitos del numero binario y se guardan en el vector*/
     if((vec[ctr]<0)||(vec[ctr]>1))
      {
       printf("Favor de solo ingresar unos y ceros"); //Se valida que el usuario solo pueda introducir unos y ceros
       return 0;	
      }	
    }
  for(ctr=0; ctr<dig+1; ctr++) 
    {
     out|=vec[dig-ctr]<<ctr; //En out que es un acumulador se hace un corrimiento con uno o cero, depende de lo que haya en la posicion ctr
     //Se usa un or, para que en caso de que haya un uno, se guarde un uno aunque haya un cero en el otro bit
     //Si hahy un cero, ce guardara un cero debido al or
     //out es un acumulador para que no pierda la informacion que se va guardando en el
     //el limite superior es la cantidad de digitos mas uno, para que cuando se iguale en la posicion del vector, llegue a la posicion cero
     //Los unos y ceros se sacan de derecha a izquierda para que no se guarden en el acumulador al reves
    }
  printf("El numero binario\n"); 
  for (ctr=0; ctr<dig; ctr++)
    {
      printf ("%d", vec[ctr]);//Se imprime el vector que contiene el numero que el usuario introdujo
    }
  printf("\n");
  printf("Es %d en decimal", out); //Se imprime el acumulador que guardó los bits ya convertido a decimal
  return 0;
}
