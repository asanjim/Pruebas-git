Algoritmo ejercicio_20
	Escribir "PROGRAMACION. Relaci�n 6. Recopilaci�n de conocimientos";
	Escribir "20. Programa que devuelve si un DNI introducido es correcto. (Consultar en internet como se obtiene la letra del DNI).";
	Definir partenumentera, i, resto, alfabetonumENT como entero;
	Definir dni, partenum, alfabeto como cadena;
	Definir letra,alfabetonum como caracter;
	alfabeto<-"TRWAGMYFPDXBNJZSQVHLCKE"; //I;O;�;U
	dimension alfabetonum(23);
	repetir
		Escribir "Escriba por favor su DNI entero, comprobaremos si es real, de no ser as� este programa pasar� su informaci�n directamente a la policia.";
		leer dni;
		dni<-Mayusculas(dni);
		partenum<-subcadena(dni,0,7);
		letra<-subcadena(dni,8,8);
		si longitud(partenum)<>8 o (subcadena(dni,8,8)="I" o subcadena(dni,8,8)="O" o subcadena(dni,8,8)="�" o subcadena(dni,8,8)="U") Entonces
			Escribir "Este DNI no es v�lido, le recuerdo que el formato aceptado es 00000000X";
			Escribir "";
		FinSi
	hasta que subcadena(dni,8,8)<>"I" y subcadena(dni,8,8)<>"O" y subcadena(dni,8,8)<>"�" y subcadena(dni,8,8)<>"U" y longitud(partenum)=8
	
	partenum<-subcadena(dni,0,7);
	partenumentera<-ConvertirANumero(partenum);
	resto<-partenumentera%23;
	para i<-0 hasta 22 Hacer
		alfabetonum(i)<-subcadena(alfabeto,i,i);
	FinPara
	si letra==alfabetonum(resto) Entonces
		Escribir "Su DNI con parte n�merica " ,partenum, " y letra " ,letra, " es v�lido";
	sino 
		Escribir "Su DNI con parte n�merica " ,partenum, " y letra " ,letra, " no es v�lido, queda usted detenido";
	FinSi
FinAlgoritmo
