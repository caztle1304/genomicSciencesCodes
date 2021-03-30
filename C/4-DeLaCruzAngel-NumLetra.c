#include<stdio.h>
int main()
{
 int numero[6]; //numero es el vector donde se guardarán los valores del numero a convertir a letra
 printf("Ingrese centenas de millar\n");
 scanf("%d", &numero[0]); //Se guardan las centenas de millar en la casilla cero
 if((numero[0]<0)||(numero[0]>9))
 {
  printf("Favor de ingresar un numero valido\n"); //Se valida que el numero introducido eeste en un rango del 0 al 9
  return 0;	
 }
 printf("Ingrese decenas de millar\n");
 scanf("%d", &numero[1]); //Se guardan las decenas de millar en la casilla 1 del vector
 if((numero[1]<0)||(numero[1]>9))
 {
  printf("Favor de ingresar un numero valido\n"); //Se valida que el numero introducido este en un rango del 0 al 9
  return 0;	
 }
 printf("Ingrese unidades de millar\n");
 scanf("%d", &numero[2]); //Se guardan las unidades de millar en la casilla 2 del vector
 if((numero[2]<0)||(numero[2]>9))
 {
  printf("Favor de ingresar un numero valido\n");//Se valida que el numero introducido este en un rango del 0 al 9 
  return 0;	
 }
 printf("Ingrese centenas\n");
 scanf("%d", &numero[3]); //Se guardan las centenas en la casilla 3 del vector
 if((numero[3]<0)||(numero[3]>9))
 {
  printf("Favor de ingresar un numero valido\n");//Se valida que el numero introducido este en un rango del 0 al 9
  return 0;	
 }
 printf("Ingrese decenas\n");
 scanf("%d", &numero[4]); //Se guardan las decenas en la casilla 4 del vector
 if((numero[4]<0)||(numero[4]>9))
 {
  printf("Favor de ingresar un numero valido\n"); //Se valida que el numero introducido este en un rango del 0 al 9
  return 0;	
 }
 printf("Ingrese unidades\n");
 scanf("%d", &numero[5]); //Se guardan las unidades en la casilla 5 del vector
 if((numero[5]<0)||(numero[5]>9))
 {
  printf("Favor de ingresar un numero valido\n"); //Se valida que el numero introducido deste en un rango del 0 al 9
  return 0;	
 }
//Aqui empiezan los casos especiales con las centenas de millar
 if((numero[0]==1)&&(numero[1]==0)&&(numero[2]==0)) 
  { 
   printf("Cien mil ");	 //Caso especial
   goto LABEL;//Salta todo el proceso hasta las centenas 
  }	
 if((numero[0]==2)&&(numero[1]==0)&&(numero[2]==0))  
  {
   printf("Doscientos mil ");//caso especial
   goto LABEL;	//Salta todo el proceso hasta las centenas
  }	
 if((numero[0]==3)&&(numero[1]==0)&&(numero[2]==0)) 
 {
  printf("Trescientos mil ");//Caso especial
  goto LABEL;//Salta todo el proceso hasta las centenas	
 }
 if((numero[0]==4)&&(numero[1]==0)&&(numero[2]==0))
 {
  printf ("Cuatrocientos mil ");//Caso especial
  goto LABEL;//Salta todo el proceso hasta las centenas	
 }
 if((numero[0]==5)&&(numero[1]==0)&&(numero[2]==0))
 {
  printf("Quinientos mil ");
  goto LABEL;//Salta todo el proceso hasta las centenas	
 }	
 if((numero[0]==6)&&(numero[1]==0)&&(numero[2]==0))
 {
  printf("Seiscientos mil "); //Caso especial
  goto LABEL;//Salta todo el proceso hasta las centenas
 }
 if((numero[0]==7)&&(numero[1]==0)&&(numero[2]==0))
 {
  printf("Setecientos mil ")
  goto LABEL;//Salta todo el proceso hasta las centenas	
 }
 if((numero[0]==8)&&(numero[1]==0)&&(numero[2]==0))
 {
  printf("Ochocientos mil ");//Caso especial
  goto LABEL;//Salta todo el proceso hasta las centenas	
 } 	
 if((numero[0]==9)&&(numero[1]==0)&&(numero[2]==0))
 {
  printf("Novecientos mil ");	//Caso especial
  goto LABEL;//Salta todo el proceso hasta las centenas
 }
 else
 {
  switch(numero[0])//Si no se cumple ninguno de los casos especiales se imprime lo que corresponda segun el numero
  {
   case 0:
    break;
   case 1: 
    printf("Ciento ");
    break;
   case 2:
    printf("Doscientos ");
    break;
   case 3:
    printf("Trescientos ");
     break;
    case 4:
     printf("Cuatrocientos ");
     break;
    case 5:
     printf("Quinientos ");
     break;
    case 6:
     printf("Seiscientos ");
     break;
    case 7:
     printf("Setecientos ");
     break;
    case 8:
     printf("Ochocientos ");
     break;
    case 9:
     printf("Novecientos ");
     break;
   }  
   //Aqui empiezan los casos especiales con las decenas de millar y las unidades de millar
 if((numero[1]==1)&&(numero[2]==0))//Caso especial
 {
  printf("Diez mil ");//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==1)&&(numero[2]==1))//Caso especial
 {
  printf("Once mil ");	//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==1)&&(numero[2]==2))//Caso especial
 {
  printf("Doce mil ");//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==1)&&(numero[2]==3))//Caso especial
 {
  printf("Trece mil ");//Salta todo el proceso hasta las centenas	
  goto LABEL;
 }	
 if((numero[1]==1)&&(numero[2]==4))//Caso especial
 {
  printf("Catorce mil ");//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==1)&&(numero[2]==5))//Caso especial
 {
  printf("Quince mil ");//Salta todo el proceso hasta las centenas	
  goto LABEL;
 }	
 if((numero[1]==2)&&(numero[2]==0))//Caso especial
 {
  printf("Veinte mil ");//Salta todo el proceso hasta las centenas	
  goto LABEL;
 }
 if((numero[1]==3)&&(numero[2]==0))//Caso especial
 {
  printf("Treinta mil ");//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==4)&&(numero[2]==0))//Caso especial
 {
  printf("Cuarenta mil ");//Salta todo el proceso hasta las centenas
 }
 if((numero[1]==5)&&(numero[2]==0))//Caso especial
 {
  printf("Cincuenta mil ");	//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==6)&&(numero[2]==0))//Caso especial
 {
  printf("Sesenta mil ");//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==7)&&(numero[2]==0))//Caso especial
 {
  printf("Setenta mil ");//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==8)&&(numero[2]==0))//Caso especial
 {
  printf("Ochenta mil ");//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 if((numero[1]==9)&&(numero[2]==0))//Caso especial
 {
  printf("Noventa mil ");//Salta todo el proceso hasta las centenas
  goto LABEL;
 }
 else
 {
  switch(numero[1])//Si no se cumple ningun caso especal cambia la impresion segun el numero en la casilla uno
  {
  	case 0:
  	break;
  	case 1:
  	printf("Dieci");
  	break;
  	case 2:
  	printf("Veinti");
  	break;
  	case 3:
  	printf("Treinta y ");
  	break;
  	case 4:
  	printf("Cuarenta y ");
  	break;
  	case 5:
  	printf("Cincuenta y ");
  	break;
  	case 6:
  	printf("Sesenta y ");
  	break;
  	case 7:
  	printf("Setenta y ");
  	break;
  	case 8:
    printf("Ochenta y ");
    break;
    case 9:
    printf("Noventa y ");
    break;
  }	
 
 switch(numero[2])//Si no se cumple ningun caso especal cambia la impresion segun el numero en la casilla dos
 {
  case 0:
  break;
  case 1:
  printf("Un mil ");
  break;
  case 2:
  printf("Dos mil ");
  break;
  case 3:
  printf("Tres mil ");
  break;
  case 4:
  printf("Cuatro mil");
  break;
  case 5:
  printf("Cinco mil ");
  break;
  case 6:
  printf("Seis mil ");
  break;
  case 7:
  printf("Siete mil ");
  break;
  case 8:
  printf("Ocho mil ");
  break;
  case 9:
  printf("Nueve mil ");
  break;	
 }
}
}
 LABEL:
 //A partir de aquí terminan los millares y aqui es donde sigue el proceso en caso de cumplirse algun caso especial
 //Aqui empiezan los casos especiales d elas centenas
 if((numero[3]==1)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Cien");
  return 0;//Termina el programa
 }
  if((numero[3]==2)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Doscientos");
  return 0;//Termina el programa
 }
  if((numero[3]==3)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Trescientos");
  return 0;//Termina el programa
 }
  if((numero[3]==4)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Cuatrocientos");
  return 0;//Termina el programa
 }
  if((numero[3]==5)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Quinientos");
  return 0;//Termina el programa
 }
  if((numero[3]==6)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Seiscientos");
  return 0;//Termina el programa
 }
  if((numero[3]==7)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Setecientos");
  return 0;//Termina el programa
 }
  if((numero[3]==8)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Ochocientos");
  return 0;//Termina el programa
 }
  if((numero[3]==9)&&(numero[4]==0)&&(numero[5]==0))//Caso especial
 {
  printf("Novecientos");
  return 0;//Termina el programa
 }
 
  switch(numero[3])//Si no se cumple ningun caso especial se imprime lo que corresponda al numero en la casilla 3 del vector
  {
   case 0:
   break;
   case 1:
   printf("Ciento ");
   break;
   case 2:
   printf("Doscientos ");
   break;
   case 3:
   printf("Trescientos ");
   break;
   case 4:
   printf("Cuatrocientos ");
   break;
   case 5: 
   printf("Quinientos ");
   break;
   case 6:
   printf("Seiscientos ");
   break;
   case 7:
   printf("Setecientos ");
   break;
   case 8:
   printf("Ochocientos ");
   break;
   case 9:
   printf("Novecientos ");	
  }
 
  if((numero[4]==1)&&(numero[5]==0))//Caso especial
 {
  printf("Diez ");	
  return 0;
 }
 if((numero[4]==1)&&(numero[5]==1))//Caso especial
 {
  printf("Once ");	
  return 0;
 }
 if((numero[4]==1)&&(numero[5]==2))//Caso especial
 {
  printf("Doce ");
  return 0;
 }
 if((numero[4]==1)&&(numero[5]==3))//Caso especial
 {
  printf("Trece ");	
  return 0;
 }	
 if((numero[4]==1)&&(numero[5]==4))//Caso especial
 {
  printf("Catorce ");
  return 0;
 }
 if((numero[4]==1)&&(numero[5]==5))//Caso especial
 {
  printf("Quince ");	
  return 0;
 }	
 if((numero[1]==2)&&(numero[2]==0))//Caso especial
 {
  printf("Veinte ");	
  return 0;
 }
 if((numero[4]==3)&&(numero[5]==0))//Caso especial
 {
  printf("Treinta ");
  return 0;
 }
 if((numero[4]==4)&&(numero[5]==0))//Caso especial
 {
  printf("Cuarenta ");
  return 0;
 }
 if((numero[4]==5)&&(numero[5]==0))//Caso especial
 {
  printf("Cincuenta ");	
  return 0;
 }
 if((numero[4]==6)&&(numero[5]==0))//Caso especial
 {
  printf("Sesenta ");
  return 0;
 }
 if((numero[4]==7)&&(numero[5]==0))//Caso especial
 {
  printf("Setenta ");
  return 0;
 }
 if((numero[4]==8)&&(numero[5]==0))//Caso especial
 {
  printf("Ochenta");
  return 0;
 }
 if((numero[4]==9)&&(numero[5]==0))//Caso especial
 {
  printf("Noventa ");
  return 0;
 }
 else
 {
  switch(numero[4])//En caso de no cumplirse ningun caso especial se imprime lo que corresponde a la casilla 4, es decir las decenas
  {
   case 0:
  	break;
  	case 1:
  	printf("Dieci");
  	break;
  	case 2:
  	printf("Veinti");
  	break;
  	case 3:
  	printf("Treinta y ");
  	break;
  	case 4:
  	printf("Cuarenta y ");
  	break;
  	case 5:
  	printf("Cincuenta y ");
  	break;
  	case 6:
  	printf("Sesenta y ");
  	break;
  	case 7:
  	printf("Setenta y ");
  	break;
  	case 8:
    printf("Ochenta y ");
    break;
    case 9:
    printf("Noventa y ");
    break; 
  }	
 
 switch(numero[5])//cambia la imprresion segun el numero presente en la casilla que corresponde a las unidades
 {
  case 0:
  break;
  case 1:
  printf("Uno");
  break;
  case 2:
  printf("Dos");
  break;
  case 3:
  printf("Tres");
  break;
  case 4:
  printf("Cuatro");
  break;
  case 5:
  printf("Cinco");
  break;
  case 6:
  printf("Seis");
  break;
  case 7:
  printf("Siete");
  break;
  case 8:
  printf("Ocho");
  break;
  case 9:
  printf("Nueve");
  break;
 }
 }
 return 0;
}