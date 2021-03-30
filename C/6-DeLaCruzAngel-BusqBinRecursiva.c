#include<stdio.h>
long int busq(int vect[100], int inp, long int frst, long int lst)
/*-vect:es el vector que se enviará desde main en el cual se efectuará la búsqueda del valor deseado
-inp:es el valor que se enviará desde main que se desea buscar en el vector
-frst:la casilla que se tomará en cuenta como primera del vector o subvector
-lst:la casilla que se tomará como la última en el vector o subvector
*/
{
 long int half;	
 //half:posición que se tomará en cuenta como la mitad con respecto a la posición inicial y la última
 half=((lst+frst)/2);
 if (inp==vect[half])//el caso base es tener el valor en la posición de la mitad del vector, caso en el cual se regresa la posición de la mitad
 {
  return half;	
 } 
 if(lst<frst) //si hay un sobrelape de vectores en el cual la posicion que se toma como la final es menor a la primera es que el valor no está
 {
  return -1;	//regresa valor de -1 
 }
 if(inp>vect[half])//Si el valor a buscar es mayor que el de la mitad se lleva a cabo lo siguiente
 { 
  return (busq(vect, inp, half+1, lst));	
  /*Se llama a la misma función en la cual se tomará la posición de la mitad mas uno como el inicio del subvector y 
  la posicion final queda sin cambios*/
 } 
 if(inp<vect[half])//Si el valor a buscar es menor que el valor de la mitad del vector se hace lo siguiente
 {
  return(busq(vect, inp, frst, half-1)); 
  /*Se llama a la misma función en la que se tomará la posicion de la mitad menos uno como la posicion final del subvector y la posición 
  inicial queda sin cambios */
 }
 
}
int main()
{
int vect[100], ctr, flg=0, aux, inp;
/*-vect: el vector que contendrá los valores introducidos por el usuario
-ctr:contador que marca los límites delos for y señala posiciones en el vector
-flg:bandera que indica estado de orden/desorden de los valores del vector
-aux:variable temporal que ayuda a efectuar el intercambio de posiciones entre dos valores
-inp:Numero que el usuario desea encontrar en el vector
*/
long int frst=0, size;
//-frst:La primera casilla del vector
//-size:Tamaño del vector que el usuario va a llenar
 printf("Ingrese tamaño del vector\n");
 scanf("%ld", &size);
 printf("Ingrese elementos del vector, despues de cada elemento presione la tecla ENTER\n");
 printf("Si usted ingresa los numeros desordenados el programa los ordenara de forma ascendente\n");
 for(ctr=0; ctr<size; ctr++)
 {
  scanf("%d", & vect[ctr]); 	//Escanea los valores que el usuario quiere que el vector tenga
 }
 while(flg==0)//Mientras la bandera indique que el vector está desordenado el ciclo sigue repitiéndose
 {
  for(ctr=0; ctr<size-1; ctr++)//El límite superior es el tamaño del vector menos uno porque el último valor no se puede comparar con nada
  { 
    flg=1;      //La bandera cambia a uno indicando estado de orden, si la condicion de abajo no se cumple, se rompe el ciclo
    
   if(vect[ctr]>=vect[ctr+1])//compara posicion de un vector con la siguiente y si la mayor esta a la izquierda hace un intercambio de posicion
   {
   	aux=vect[ctr];//variable temporal toma el valor de la izquierda
   	vect[ctr]=vect[ctr+1];//La variable de la derecha se recorre un lugar a la izquierda
   	vect[ctr+1]=aux;//La variable temporal deposita su valor una casilla a la derecha de la posición original
   	flg=0; //La bandera indica estado de desorden
   }
  }
  }	
  printf("Ingrese numero a buscar en el vector\n");
  scanf("%d", &inp); //Se escanea el elemento que se quiere buscar en el vector
  if(busq(vect, inp, frst, size)==-1)//Si la función regresa un valor de -1 significa que el valor no está en el vector, 
  	//por lo que se imprime el mensaje correspondiente
  {
   printf ("El numero introducido no esta en el vector");	
  }
  else
  {
  	printf("Su numero se encuentra en la posición %ld del vector", busq(vect, inp, frst, size));
  	//Si el valor sí esta en el vector se imprime el mensaje correspondiente junto con la posición en la que está
  }
 return 0;
}