Algoritmo ejercicio_20
	Escribir "PROGRAMACION. Relación 6. Recopilación de conocimientos";
	Escribir "20. Programa que devuelve si un DNI introducido es correcto. (Consultar en internet como se obtiene la letra del DNI).";
	Definir partenumentera, i, resto, alfabetonumENT como entero;
	Definir dni, partenum, alfabeto como cadena;
	Definir letra,alfabetonum como caracter;
	alfabeto<-"TRWAGMYFPDXBNJZSQVHLCKE"; //I;O;Ñ;U
	dimension alfabetonum(23);
	repetir
		Escribir "Escriba por favor su DNI entero, comprobaremos si es real, de no ser así este programa pasará su información directamente a la policia.";
		leer dni;
		dni<-Mayusculas(dni);
		partenum<-subcadena(dni,0,7);
		letra<-subcadena(dni,8,8);
		si longitud(partenum)<>8 o (subcadena(dni,8,8)="I" o subcadena(dni,8,8)="O" o subcadena(dni,8,8)="Ñ" o subcadena(dni,8,8)="U") Entonces
			Escribir "Este DNI no es válido, le recuerdo que el formato aceptado es 00000000X";
			Escribir "";
		FinSi
	hasta que subcadena(dni,8,8)<>"I" y subcadena(dni,8,8)<>"O" y subcadena(dni,8,8)<>"Ñ" y subcadena(dni,8,8)<>"U" y longitud(partenum)=8
	
	partenum<-subcadena(dni,0,7);
	partenumentera<-ConvertirANumero(partenum);
	resto<-partenumentera%23;
	para i<-0 hasta 22 Hacer
		alfabetonum(i)<-subcadena(alfabeto,i,i);
	FinPara
	si letra==alfabetonum(resto) Entonces
		Escribir "Su DNI con parte númerica " ,partenum, " y letra " ,letra, " es válido";
	sino 
		Escribir "Su DNI con parte númerica " ,partenum, " y letra " ,letra, " no es válido, queda usted detenido";
	FinSi
FinAlgoritmo
