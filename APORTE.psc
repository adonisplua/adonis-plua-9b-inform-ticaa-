Proceso sin_titulo
	Dimensionar vector(11);
	Definir vector Como Real;
	Definir i, j, aux Como Entero;
	// Solicitar al usuario que ingrese los 10 n�meros
	Escribir 'Por favor, ingrese 10 n�meros:';
	Para i<-1 Hasta 10 Hacer
		Escribir 'Ingrese el n�mero ', i, ': ';
		Leer vector[i];
	FinPara
	// Implementaci�n del algoritmo de burbuja para ordenar de forma ascendente
	Para i<-1 Hasta 10 Hacer
		Para j<-1 Hasta 10-i Hacer
			Si vector[j]>vector[j+1] Entonces
				// Intercambiar los elementos
				aux <- vector[j];
				vector[j] <- vector[j+1];
				vector[j+1]<-aux;
			FinSi
		FinPara
	FinPara
	// Mostrar el vector ordenado
	Escribir 'Vector ordenado de manera ascendente:';
	Para i<-1 Hasta 10 Hacer
		Escribir vector[i];
	FinPara
FinProceso
