Algoritmo CarritoDeComprasConPruebaUnitaria
	Definir nombreProducto, respuesta Como Cadena
	Definir precio, cantidad, subtotal, total Como Real
	Definir i Como Entero
	
	// Creamos arreglos para los productos y sus precios 
	Dimension productos[4]
	Dimension precios[4]
	productos[1] <- "ROPA"
	precios[1]<-500
	
	productos[2] <- "EQUIPAMENTO"
	precios[2] <-350
	
	productos[3] <- "ACCESORIOS"
	precios[3]<-200
	
	productos[4] <- "RECUPERACIÓN"
	precios[4]<-400
	
	//Inicializamos variable total y el indice 
	total <- 0
	i <- 1
	
	//Ponemos titulo
	Escribir "---- Carrito de Compras ----"
	//Generamos un ciclo para seguir ingresando productos hasta que digamos que ya no queremos ingresar mas
	Repetir
		Escribir "Producto #", i
		
		Escribir "Ingrese el nombre del producto (Tal como se muestra a continuación): Ropa, Equipamento, Accesorios, Recuperación)"
		Leer nombreProducto
		nombreProducto <-Mayusculas(nombreProducto)
		
		//Buscamos en nuestra "base de datos" el producto 
		
		Para j <- 1 Hasta 4 Con Paso 1
			Si nombreProducto = productos[j] Entonces
				precio <- precios[j]
			FinSi
		FinPara
		
		Escribir "Ingrese la cantidad del producto:"
		Leer cantidad
		// Calculamos el subtotal y el total
		subtotal <- precio * cantidad
		total <- total + subtotal
		//Mostramos en pantalla el resultado
		Escribir "Subtotal del producto ", nombreProducto, ": $", subtotal
		
		// Preguntamos si requiere otro producto
		Escribir "¿Desea agregar otro producto? (si/no)"
		Leer respuesta
		respuesta <- Mayusculas(respuesta)
		
		i <- i + 1
		
	Hasta Que respuesta = "NO"
	
	Escribir "---------------------------"
	Escribir "Total de la compra: $", total
	Escribir "Gracias por su compra. Vuelva pronto :)"
FinAlgoritmo