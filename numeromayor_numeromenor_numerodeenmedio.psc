Algoritmo numeromayor_numeromenor_numerodeenmedio
// Declaraci�n de variables
Definir  num1, num2, num3, mayor, medio, menor Como Entero

// Solicitar al usuario que ingrese los tres n�meros
Escribir "Ingrese el primer n�mero:"
Leer num1
Escribir "Ingrese el segundo n�mero:"
Leer num2
Escribir "Ingrese el tercer n�mero:"
Leer num3

// Determinar el n�mero mayor
	Si (num1 >= num2 y num1 >= num3) Entonces
		mayor = num1
	FinSi
	
	Si (num2 >= num3) Entonces
		medio = num2
		menor = num3
	Sino
		medio = num3
		menor = num2
	FinSi
	 Si (num2 >= num1 y num2 >= num3) Entonces
        mayor = num2
        Si (num1 >= num3) Entonces
            medio = num1
            menor = num3
        Sino
            medio = num3
            menor = num1
        Fin Si
    Sino
        mayor = num3
        Si (num1 >= num2) Entonces
            medio = num1
            menor = num2
        Sino
            medio = num2
            menor = num1
        Fin Si
    Fin Si
	
    // Mostrar resultados
    Escribir "El n�mero mayor es:", mayor
    Escribir "El n�mero del medio es:", medio
    Escribir "El n�mero menor es:", menor

FinAlgoritmo

