Algoritmo Ejercicio_Numeros_Romanos_sinFuncion
	
    Escribir "Escriba un numero entre 1 y 1000";
    Leer num;
    
    Definir valido Como Logico;
    valido<-Verdadero;
	 
    Si num=0 Entonces //creamos unas condiciones por las que el numero no podria ser representado
        Escribir "No podemos representar el 0 en numeros romanos";
        valido<-Falso;
    FinSi
    Si num<>trunc(num) Entonces
        Escribir "El número no puede contener decimales";
        valido<-Falso;
    FinSi
    Si num>1000 o num<0 Entonces
        Escribir "El numero debe estar dentro de los parametros establecidos";
        valido<-Falso;
    FinSi
    
    Si valido Entonces //si se puede representar:  
        Si num=1000 Entonces
            Escribir "M";
        Sino
            Dimension nu[10], nd[10], nc[10]; // longitud máxima del vector para unidades, decenas y centenas
            Definir nu,nd,nc Como Caracter;
            nu[0]<-''; nu[1]<-'I'; nu[2]<-'II'; nu[3]<-'III'; nu[4]<-'IV'; nu[5]<-'V'; nu[6]<-'VI'; nu[7]<-'VII'; nu[8]<-'VIII'; nu[9]<-'IX';
            nd[0]<-''; nd[1]<-'X'; nd[2]<-'XX'; nd[3]<-'XXX'; nd[4]<-'XL'; nd[5]<-'L'; nd[6]<-'LX'; nd[7]<-'LXX'; nd[8]<-'LXXX'; nd[9]<-'XC';
            nc[0]<-''; nc[1]<-'C'; nc[2]<-'CC'; nc[3]<-'CCC'; nc[4]<-'CD'; nc[5]<-'D'; nc[6]<-'DC'; nc[7]<-'DCC'; nc[8]<-'DCCC'; nc[9]<-'CM';
            Definir centenas,decenas,unidades como numeros;
            centenas<-trunc(num/100) % 10;
            decenas<-trunc(num/10) % 10;
            unidades<-num % 10;
            Escribir nc[centenas],nd[decenas],nu[unidades]; //mostramos todo junto
        FinSi
    FinSi
    
FinAlgoritmo
