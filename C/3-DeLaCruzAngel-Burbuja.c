#include<stdio.h>
int main() 
{
 int cantnum=0, vect[1000], aux=0, ctr=0, flg=0;
 /*-cantnum:La cantidad de numeros que el usuario quiere introducir
   -vect:Es el vector donde se van a ordenar los numeros
   -aux:es una variable temporal que guarda uno de los valors que van a cambiar de lugar
   -ctr: contador que delimita los limites del for
   -flg: Bandera que indica el estado de orden y desorden del vector */
 printf("Escriba la cantidad de números a ordenar, este programa ordena numeros enteros con un rango entre -20000 y 20000 y soporta hasta cien numeros\n");
 scanf("%d", &cantnum);//Se escanea la cantidad de numeros que el usuario quiere ordenar
 if(cantnum>100)//Se valida que el usuario no pueda introducir mas de cien numeros
 {
  printf("Este programa solo acepta hasta cien numeros"); 
  return 0;	
 }
 printf("Ingrese los numeros que desea ordenar, despues de cada numero presione la tecla Enter");
 for(ctr=0; ctr<cantnum; ctr++)
 {
  scanf("%d", &vect[ctr]); //Se guardan en el vector los numeros a ordenar
 }
 while(flg==0) //La bandera en cero indica desorden, es decir, mientras que el vector este en desorden, el ciclo se repite
 {
  for(ctr=0; ctr<cantnum-1; ctr++) /*El limite superior es la cantidad de numeros menos uno porque al llegar al final
  el numero que esta en la ultima posicion no puede ser comparado con nada*/
  { 
    flg=1; //La bandera se vuelve uno, y si la condición de abajo no se cumple, sale del ciclo     
   if(vect[ctr]>=vect[ctr+1]) /*Se verifica que los numeros no sean mayores al inmediato siguiente, de forma que si son mayores o iguales
    se hace el cambio de posicion*/
   {
   	aux=vect[ctr]; //la variable temporal toma el valor del numero mayor
   	vect[ctr]=vect[ctr+1]; //El numero mayor cambia de lugar una posicion atras
   	vect[ctr+1]=aux; //La variable temporal asigna su valor una posicion adelante de la que originalmente tenia
   	flg=0; //La bandera se vuelve cero porque el vector esta desordenado y el ciclo se sigue haciendo
   }
  }
  }	
   printf("Los numeros ordenados de forma ascendente son\n");
 for(ctr=0; ctr<cantnum; ctr++)
 {
  printf("%d ", vect[ctr]);	//Se imprimen los numeros ordenados de forma ascendente
 }
 return 0; 
}