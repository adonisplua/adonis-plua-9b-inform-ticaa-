Proceso juego_de_la_vida_de_conwey 
		// Definir el tama�o del tablero
	Definir filas Como Entero;
	Definir Columnas Como Entero; 
	Definir generaciones Como Entero;
	
		
	Definir tablero_actual,tablero_siguiente Como Entero;
		Definir tablero Como Entero;
		filas<- 5; // Puedes modificar el tama�o del tablero
		columnas <- 5;
		generaciones <- 10; // N�mero de generaciones que queremos simular
		
		// Inicializar el tablero con valores aleatorios o predefinidos
		Dimension tablero_actual[5*5];
		Dimension tablero_siguiente[5*5];
		
		// Inicializaci�n aleatoria (0=muerta, 1=viva)
		Para i <- 1 Hasta filas Hacer
			
			Para j <- 1 Hasta columnas Hacer
				tablero_actual[5*5] <- Aleatorio[0,1];
			FinPara
		FinPara
		
		// Imprimir el estado inicial del tablero
		Escribir "Estado inicial:";
		//ImprimirTablero(tablero_actual, filas, columnas);
		
		// Simular el juego durante un n�mero de generaciones
		Para gen <- 1 Hasta generaciones Hacer
			// Calcular la siguiente generaci�n
			Para i <- 1 Hasta filas Hacer
				Para j <- 1 Hasta columnas Hacer
					Definir vecinos Como Entero;
					//vecinos <- ContarVecinos(tablero_actual, i, j, filas, columnas);
					
					Si tablero_actual[5*5 ] = 1 Entonces
						// Regla 1 y 3: Sobrepoblaci�n o soledad
						Si vecinos < 2 O vecinos > 3 Entonces
							tablero_siguiente[5*5] <- 0; // Muere
						SiNo
							tablero_siguiente[5*5] <- 1; // Sigue viva
						FinSi
					SiNo
						// Regla 4: Reproducci�n
						Si vecinos = 3 Entonces
							tablero_siguiente[5*5] <- 1; // Nace una nueva c�lula
						SiNo
							tablero_siguiente[5*5] <- 0; // Sigue muerta
						FinSi
					FinSi
				FinPara
			FinPara
			
			// Actualizar el tablero
			Para i <- 1 Hasta filas Hacer
				Para j <- 1 Hasta columnas Hacer
					tablero_actual[5*5] <- tablero_siguiente[5*5];
				FinPara
			FinPara
			
			// Imprimir el tablero actualizado
			Escribir "Generaci�n ", gen;
			//ImprimirTablero(tablero_actual, filas, columnas);
		FinPara
FinAlgoritmo

// Funci�n para contar las c�lulas vecinas vivas
Funcion ContarVecinos(entero, filas, columnas)
FinAlgoritmo

FinFuncion





