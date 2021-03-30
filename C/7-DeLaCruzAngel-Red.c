#include<stdio.h>
int main()
{
 int nodos, ctr, ctr2, ctr3, ctr4, red[100][100], numinterac, interac, gdo=0, aux;
 float clstr;
 /*-nodos es el numero de nodos que el usuario quiere que haya
-ctr es un contador que va a permitir limitar fors y recorrer la matriz
-ctr2: Es contador que permite limitar fors y recorer la matriz
-ctr3: Es contador que limita fors y recorrer matriz
-ctr4:Contador que limita fors y recorre matriz
-Red es la matriz en la que se va a representar la red
-numinterac: Cantidad de interacciones que tienee un nodo con otros nodos
-interac: Contra que nodo tiene interaccion un otro nodo
-gdo:Es acumulador que permite recorrer la matriz y sascar el grado de cada nodo
-aux:variable temporal que permite obtener la cantidad de interacciones que hya entre vecinos de un nodo
 */
 printf("ingrese la cantidad de nodos que hay\n");
 scanf("%d", &nodos);//usuario ingresa cantidad de nodos que hay
 if(nodos>100)//Se valida que el usuario no ingrese un numero mayor a cien
 {
 printf ("No puede haber mas de cien nodos");	
 }	
 printf("Los nodos deben tener asignado un valor numérico de entre uno y noventa y nueve,\n de modo que los nombres de los nodos seran numeros\n"); 
 printf("Ingrese los numeros de los nodos, recuerde que estos deben ser numeros en el rango de 0 a 99\n");
 printf("Despues de cada nodo presione la tecla enter e ingrese hacia que otros nodos esta conectado\n");
 for(ctr=0; ctr<100; ctr++)  
 {                              //*Este conjunto de dos fors anidados llena la matriz con ceros
  for(ctr2=0; ctr<100; ctr++)    //*Se llena con ceros con el objetivo de evitar preguntar al usuario todas las posibles interacciones
  {
  red[ctr][ctr2]=0;	
  }	
 }
 for(ctr=1; ctr<nodos+1; ctr++)
 {
  red[0][ctr]=ctr;           //Se llenan los extremos con los numeros que corresponden a los nodos
  red[ctr][0]=ctr;	
 }
 for(ctr=1; ctr<nodos+1; ctr++)  //*A partir de aquí se sustituyen los ceros por unos en los lugares donde haya interaccion
 { printf("Para el nodo %d ", ctr );
   printf("Ingrese cantidad de nodos con los que interacciona\n");
   scanf("%d", &numinterac); //Se escanea cantidad de interacciones que tiene un nodo

   for(ctr2=1; ctr2<numinterac+1; ctr2++) 
   {
   	
   	printf("Ingrese nodos con los que interacciona, despues de introducir cada uno presione ENTER\n");
   	scanf("%d", &interac); //Se introduce un uno en donde haya interacciones entre nodos
   	red[ctr][interac]=1;
   	red[interac][ctr]=1;                 //*Se hace una matriz simetrica porque es una red no dirigida
   }
   printf("Ingrese siguiente nodo\n");
  } 
  printf("La matriz que representa su red es la siguiente:\n");
  for(ctr=0; ctr<nodos+1; ctr++)
  { for(ctr2=0; ctr2<nodos+1; ctr2++)
  	{
      printf("%d ", red[ctr][ctr2]); //Se imprime la matriz resultante que representa la red 
    }
    printf("\n");
  }
  printf("El grado de cada nodo es:\n");
  for(ctr=1; ctr<nodos+1; ctr++)
  {
   gdo=0; //el acumulador que saca el grado se inicializa en cero despues de cada ciclo
   for(ctr2=1; ctr2<nodos+1; ctr2++)
   {
    if(red[ctr][ctr2]==1)
    {
     gdo+=1;//Si se encuentra un uno en la fila del nodo el acumulador del grado aumenta
     aux=0;
  for(ctr3=0; ctr3<gdo; ctr3++)
   {
   	
   	 if((red[ctr][ctr3]==1)&&(red[ctr2][ctr3])==1) //Se revisan las interacciones entre los vecinos del nodo, en caso de haber aumenta el acumulador
   	 {
   	  aux++;	
   	 }	
   	 	
   }
    }	
   }
   
   
   
    if(gdo<2)
   {
   	clstr=0; //si el grado es menor a dos el coeficiente es cero porque hay division entre cero
   }
   if(gdo>=2)
   {
   clstr=2*aux/(gdo*(gdo-1));  //Si el grado es mayor o igual a dos se hace la formula de coeficiente de clustering
   }
   
  
   printf("El grado del nodo %d es %d y su coeficiente de clustering es %f\n", ctr, gdo, clstr);
  }	

  return 0;
 }