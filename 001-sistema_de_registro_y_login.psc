Proceso Desafio01login
	//definiciones
	Definir opmenuprin Como Entero;
	Definir username Como Caracter;
	Definir USERPASS Como Caracter;
	Definir REUSERPASS Como Caracter;
	Definir ENTER Como Caracter;
	Definir USERLOGIN Como Caracter;
	Definir PASSWORDLOGIN Como Caracter;
	Definir logrado Como Entero;
	Definir intentofallido Como Entero;
	
	
	//DESIGNACIONES
	opmenuprin <- 0;
	username <- "0";
	USERPASS <- "0";
	REUSERPASS <- "0";
	USERLOGIN <- "0";
	PASSWORDLOGIN <- "0";
	logrado <- 0;
	intentofallido <-0;
	
	//menu principal
	Repetir
		Escribir "===========================";
		Escribir "SYSTEMA DE REGISTRO Y LOGIN";
		Escribir "===========================";
		Escribir "";
		Escribir "1.- crear nuevo perfil";
		Escribir "2.- Login";
		Escribir sin saltar "seleccione una opcion";
		leer opmenuprin;
		Limpiar Pantalla;
		Segun opmenuprin Hacer
			//menu crear nuevo perfil
			1:
				Escribir "========================";
				escribir "CREACION DE NUEVO PERFIL";
				Escribir "========================";
				Escribir "";
				Escribir Sin Saltar "INGRESE NUEVO NOMBRE DE USUARIO";
				Leer username;
				Limpiar Pantalla;
				escribir "========================";
				escribir "CREACION DE NUEVO PERFIL";
				Escribir "========================";
				Escribir "";
				Escribir Sin Saltar "INGRESE NUEVA CONTRASEÑA DE USUARIO";
				Leer USERPASS;
				Limpiar Pantalla;
				Escribir "========================";
				Escribir "CREACION DE NUEVO PERFIL";
				Escribir "========================";
				Escribir "";
				Escribir Sin Saltar "REINGRESE SU CONTRASEÑA";
				LEER REUSERPASS;
				Limpiar Pantalla;
					//creacion correcta
				SI USERPASS = REUSERPASS Entonces
						Escribir "==================";
						Escribir "¡CREACION EXITOSA!";
						Escribir "==================";
						Escribir "";
						Escribir "SU USUARIO HA SIDO CREADO CON EXITO";
						Escribir Sin Saltar "PRESIONE ENTER PARA VOLVER";
						Leer ENTER;
						Limpiar Pantalla;
					//creacion incorrecta	
					SiNo
						username <- "0";
						USERPASS <- "0";
						REUSERPASS <- "0";
						Escribir "========================";
						Escribir "CREACION DE NUEVO PERFIL";
						escribir "------------------------";
						Escribir "        ERROR           ";
						Escribir "========================";
						Escribir "";
						ESCRIBIR "LAS CONTRASEÑAS NO COINCIDEN";
						Escribir Sin Saltar "PRESIONE ENTER Y VUELVA A REINTENTAR";
						Leer ENTER;
						Limpiar Pantalla;
					FinSi
			2:
				Repetir
				Escribir "===============================";
				Escribir "INGRESO DE USUARIOS REGISTRADOS";
				Escribir "===============================";
				Escribir "";
				Escribir "porfavor ingrese su usuario";
				Escribir Sin Saltar "USUARIO: ";
				Leer USERLOGIN;
				Limpiar Pantalla;
				Escribir "===============================";
				Escribir "INGRESO DE USUARIOS REGISTRADOS";
				Escribir "===============================";
				Escribir "";
				Escribir "PORFAVOR INGRESE SU CONTRASEÑA";
				Escribir SIN SALTAR "CONTRASEÑA: ";
				Leer PASSWORDLOGIN;
				LIMPIAR PANTALLA;
				SI USERLOGIN == username Y USERLOGIN <> "0" Y PASSWORDLOGIN == USERPASS Y PASSWORDLOGIN <> "0" Entonces
					Escribir "=====================================";
					Escribir "LO LOGRASTE! PUDISTE SALIR DEL BUCLE!";
					Escribir "=====================================";
					logrado <-1;
				SiNo
					
						
				
					USERLOGIN <- "0";
					PASSWORDLOGIN <- "0";
					logrado <- 0;
					ESCRIBIR "==========================================";
					Escribir "ERROR AUN NO ERES DIGNO DE SALIR DEL BUCLE";
					Escribir "==========================================";
					Escribir Sin Saltar "PULSA ENTER PARA VOLVER A INTENTARLO";
					Leer ENTER;
					Limpiar Pantalla;
					intentofallido <- intentofallido +1;
				FinSi	
						
				Hasta Que logrado == 1 o intentofallido ==3
					
	
		FinSegun
	Hasta Que logrado == 1	

FinProceso
