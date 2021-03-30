#include<stdio.h>
int main()
{
 int conj1[100], conj2[100], lconj1, lconj2, ctr, aux, oper;
 /*-conj1: Se van a guardar los valores del primer conjunto
 -conj2:Se guardan los valores del segundo conjunto
 -lconj1:Cantidad de valores que van a guardarse en el conjunto 1
 -lconj2:Cantidad de valores que van a guardarse en el conjunto 2
 -ctr:Contador que marca límites en for
 -aux:Variable temporal que almacena los valores del conjunto 
 -oper:variable para seleccionar la operacion que se va a realizar */
 printf("Este programa hace operaciones entre conjuntos\n");
 printf("Los elementos de los conjuntos deben ser numeros enteros positivos con valores en un rango de cero a cien\n");
 printf("Ingrese cantidad de elementos del primer conjunto\n");
 scanf("%d", &lconj1); //Escanea la longitud del conjunto 1
 if(lconj1>100)
 {
 printf("El conjunto no puede tener mas de cien elementos"); //Valida que el usuario no introduzca numero mayor a cien
 return 0; 
 }	
 printf("Ingrese elementos del primer conjunto\n");
 printf("Despues de introducir cada elemento del conunto presione ENTER\n");
 for(ctr=0; ctr<100; ctr++)
 {
  conj1[ctr]=0;//LLena de ceros ambos conjuntos para no tener valores que habia en la memoria
  conj2[ctr]=0;	
 }
 for(ctr=0; ctr<lconj1; ctr++)
 {
  scanf("%d", &aux); //Se escanean los valores de los elementos de los conjuntos
  if((aux>100)||(aux<0))
  {
   printf("Recuerde que los elementos del conjunto tienen que estar en un rango de entre cero y cien"); 
   return 0;//Se valida que los elementos del conjunto esten en el rango permitido
  }
  conj1[aux]=1; //Se guarda un uno en la posicion que corresponde al valor del conjunto
  //es decir, si se introduce un 5, se guardara un 1 en la posicion 5 del vector, para indicar presencia de dicho valor
 }
 printf("Ingrese cantidad de elementos del segundo conjunto\n");
 scanf("%d", &lconj2);//Se escanean valores del segundo conjunto
 if(lconj2>100)
 {
  printf("El conjunto no puede ser de mas de cien elementos");
  return 0;	//Se valida que el usuario no introduzca numero mayyor a cien
 }	
 printf("ingrese elementos del segundo conjunto\n");
 for(ctr=0; ctr<lconj2; ctr++)
 {
  scanf("%d", &aux);//escanea elementos del conjunto
  if((aux>100)||(aux<0))
  {
   printf("Recuerde que los elementos del conjunto tienen que estar en un rango de entre cero y cien");
   return 0;	//Valida que elementos del conjunto esten en rango permitido
  }
  conj2[aux]=1;	//Se guarda un uno en la posicion que corresponde al valor del conjunto
  //es decir, si se introduce un 5, se guardara un 1 en la posicion 5 del vector, para indicar presencia de dicho valor
 }
 
 do{
 printf("Teclee el numero de la operacion que desea realizar\n");
 printf("1/Interseccion\n2/Diferencia simetrica\n3/Diferencia asimetrica\n4/Union\n");
 scanf("%d", &oper); //Se escanea el numero de la operacion que el usuario quiere hacer
 if((oper<1)||(oper>4))
 {
  printf("Favor de seleccionar un numero valido\n");
	//Se valida que el usuario solo introduzca numeros permitidos y que se repita el ciclo hasta que se escoja un numero valido
 }
 }
 while((oper<1)||(oper>4));
 	switch (oper)
 {
  case 1: //el uno corresponde a la operacion interseccion
   printf("La interseccion de los dos conjuntos es:\n");
   for(ctr=0; ctr<100; ctr++)
   { 
    if(conj1[ctr]&conj2[ctr]) //se hace un AND para que en caso de que haya un uno en la misma posicion de ambos vectores se imprima dicha posicion
    {
     printf("%d ", ctr);//Imprime posicion donde habia un uno en ambos vectores
    }	 
   }
   break;
   case 2://El dos corresponde a la operacion diferencia simetrica
    printf("La diferencia simetrica de los dos conjuntos es:\n");

    for(ctr=0; ctr<100; ctr++)
     {
      if(conj1[ctr]^conj2[ctr])/*Se hace un xor para que solo se imprima posicion cuando hay un uno en el primer vector un cero en 
      el segundo o viceversa, es decir, que solo este presente un uno en uno de los dos vectores*/
      {
       printf("%d ", ctr);	//Se imprime la posicion del vector donde habia un numero uno
      }
     }	
     break;
     case 3: //El numero tres corresponde a la diferencia asimetrica
     printf("La diferencia asimetrica del primer conjunto es \n");
     for(ctr=0; ctr<100; ctr++)
     {
      if(conj1[ctr]&~conj2[ctr])/*Se saca la diferencia asimetrica del primer conjunto para que solo se impriman los
      elementos del primer vector que no estan en el segundo*/
      {
       printf("%d ", ctr);	//Se imprime la posicion donde hay un uno en el primer vector pero no en el segundo
      }	
     }
     printf("La diferencia asimetrica del segundo conjunto es\n");
     for(ctr=0; ctr<100; ctr++)
     {
      if(conj2[ctr]&~conj1[ctr])/*Se saca la diferencia asimetrica del segundo conjunto para que solo se impriman los
      elementos del primer vector que no estan en el primero*/
      {
       printf("%d ", ctr);	//Se imprime la posicion donde hay un uno en el primer vector pero no en el segundo
      }	
     }
     break;
     case 4://El cuatro corresponde a la union de los conjuntos
     printf("La union de los conjuntos es\n");
     /*Representé la union de los conjuntos como la impresion de las dos diferencias asimetricas junto con la interseccion de los conjuntos*/
     for(ctr=0; ctr<100; ctr++)
     {
      if(conj1[ctr]&~conj2[ctr])//Se hace exactamente lo mismo que en diferencia asimetrica de primer conjunto
      {
       printf("%d ", ctr);	
      }	
     }
     for(ctr=0; ctr<100; ctr++)
    { 
    if(conj1[ctr]&conj2[ctr])//Esto es la interseccion de los conjuntos
     {
     printf("%d ", ctr);
     }	 
    }
     for(ctr=0; ctr<100; ctr++)//Esto es la diferencia asimetrica del segundo conjunto
     {
      if(conj2[ctr]&~conj1[ctr])
      {
       printf("%d ", ctr);	
      }	
     }
   }
   return 0;
}
