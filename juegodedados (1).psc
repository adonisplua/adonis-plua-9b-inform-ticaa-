Algoritmo juegodedados
	definir x Como Entero
	x = 1
	mientras x <> 0 Hacer
		escribir "lanzar el dado nuevamente"
		escribir "1= girar dado"
		escribir "0=salir"
		leer x
		si x == 1 o x == 0 Entonces
			si x == 1 Entonces
				escribir "obtuviste un: ",azar(6) + 1
			FinSi
		SiNo
			escribir "ingresar una opcion correcta"
		finsi
	FinMientras
FinAlgoritmo
