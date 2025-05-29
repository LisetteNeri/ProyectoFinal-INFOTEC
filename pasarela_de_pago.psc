Algoritmo pasarela_de_pago
	// Declaración de variables
    Definir nombre, correo, direccion Como Cadena
    Definir tipoTarjeta, numeroTarjeta, fechaVencimiento, cvv Como Cadena
    Definir datosValidos, pagoExitoso Como Logico
    Definir longitudTarjeta Como Entero
	
    // Paso 1: Verificación de datos del comprador
    Escribir "Ingrese su nombre completo:"
    Leer nombre
	
    Escribir "Ingrese su correo electrónico:"
    Leer correo
	
    Escribir "Ingrese su dirección:"
    Leer direccion
	
    // Verificación básica de datos
    Si nombre <> "" Y correo <> "" Y direccion <> "" Entonces
        datosValidos <- Verdadero
    Sino
        datosValidos <- Falso
    FinSi
	
    // Paso 2: Selección del método de pago (solo tarjeta)
    Si datosValidos Entonces
        Escribir "Seleccione tipo de tarjeta:"
        Escribir "1. Visa"
        Escribir "2. MasterCard"
        Escribir "3. American Express"
        Escribir "4. Diners Club"
        Leer tipoTarjeta
		
        Escribir "Ingrese número de tarjeta:"
        Leer numeroTarjeta
		
        // Verificar longitud del número de tarjeta
        longitudTarjeta <- Longitud(numeroTarjeta)
		
        Segun tipoTarjeta Hacer
            Caso "1": // Visa
                Si longitudTarjeta = 16 Entonces
                    datosValidos <- Verdadero
                Sino
                    datosValidos <- Falso
                FinSi
            Caso "2": // MasterCard
                Si longitudTarjeta = 16 Entonces
                    datosValidos <- Verdadero
                Sino
                    datosValidos <- Falso
                FinSi
            Caso "3": // American Express
                Si longitudTarjeta = 15 Entonces
                    datosValidos <- Verdadero
                Sino
                    datosValidos <- Falso
                FinSi
            Caso "4": // Diners Club
                Si longitudTarjeta >= 14 Y longitudTarjeta <= 15 Entonces
                    datosValidos <- Verdadero
                Sino
                    datosValidos <- Falso
                FinSi
            De Otro Modo:
                datosValidos <- Falso
        FinSegun
		
        // Continuar si el número de tarjeta es válido
        Si datosValidos Entonces
            Escribir "Ingrese fecha de vencimiento (MM/AA):"
            Leer fechaVencimiento
			
            Escribir "Ingrese CVV:"
            Leer cvv
			
            Si fechaVencimiento <> "" Y cvv <> "" Entonces
                Escribir "Procesando pago..."
                pagoExitoso <- Verdadero
            Sino
                pagoExitoso <- Falso
            FinSi
			
            Si pagoExitoso Entonces
                Escribir "¡Pago realizado con éxito!"
            Sino
                Escribir "Error en el pago. Verifique la fecha de vencimiento y CVV."
            FinSi
        Sino
            Escribir "Error: El número de tarjeta no es válido para el tipo seleccionado."
        FinSi
    Sino
        Escribir "Error: Datos del comprador inválidos."
	FinSi
FinAlgoritmo
