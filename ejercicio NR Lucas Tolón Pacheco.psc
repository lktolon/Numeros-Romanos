
funcion nrom(num)
	definir validar Como Logico
	validar <- verdadero
	
	Si num=0 Entonces
        validar<-Falso; //como no se puede representar, el numero no es valido
		Escribir "El numero debe ser distinto de 0"
    FinSi
	
	Si num<>trunc(num) Entonces 
        validar<-Falso; //si el numero contiene decimales, no es valido
		Escribir "El numero no puede contener decimales"
    FinSi
	
	Si num>1000 o num<0 Entonces
		validar<-falso
		Escribir "El numero debe estar dentro de los parametros establecidos"
	FinSi
	
	Si validar Entonces  //en caso de que el número sea válido procedemos a convertirlo      
        Si Num=1000 Entonces //si el número es 1000, pondremos directamente M
            Escribir "M";
        Sino //sino, creamos un vector por unidades, decenas y centenas
            Dimension nu[10], nd[10], nc[10]; // Dimensión máxima para unidades, decenas y centenas
            Definir nu,nd,nc Como Caracter;
            nu[0]<-''; nu[1]<-'I'; nu[2]<-'II'; nu[3]<-'III'; nu[4]<-'IV'; nu[5]<-'V'; nu[6]<-'VI'; nu[7]<-'VII'; nu[8]<-'VIII'; nu[9]<-'IX';
            nd[0]<-''; nd[1]<-'X'; nd[2]<-'XX'; nd[3]<-'XXX'; nd[4]<-'XL'; nd[5]<-'L'; nd[6]<-'LX'; nd[7]<-'LXX'; nd[8]<-'LXXX'; nd[9]<-'XC';
            nc[0]<-''; nc[1]<-'C'; nc[2]<-'CC'; nc[3]<-'CCC'; nc[4]<-'CD'; nc[5]<-'D'; nc[6]<-'DC'; nc[7]<-'DCC'; nc[8]<-'DCCC'; nc[9]<-'CM';
            Definir centenas,decenas,unidades como numeros; 
            centenas<-trunc(Num/100) % 10;
            decenas<-trunc(Num/10) % 10;
            unidades<-Num % 10;
            Escribir nc[centenas],nd[decenas],nu[unidades];
        FinSi
    FinSi
	
FinFuncion


Proceso Ejercicio_Numeros_Romanos
    
    Escribir "Ingrese un número entre 1 y 1000"; //Leer numero 
    Leer num
	nrom(num)
FinProceso