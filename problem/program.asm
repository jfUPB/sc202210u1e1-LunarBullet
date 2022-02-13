(INICIO)
@SCREEN //Ubicacion en memoria de la pantalla
D=A     //Guardo la ubicacion de screen en D
@R1     //mi contador, posicion R1 en memoria
M=D     //guardo el valor D en A (basicamente inicializo el valor de R1, mi contador, a 16384)
@KBD    //Posicion input del teclado
D=M     //Almaceno la letra del teclado en memoria
@INICIO //Posicion inicio
D;JEQ   //salto a inicio si D es igual a 0 (es decir, si ninguna tecla se presiona) O CONTINUO SI NO ES 0
@70     //Posicion 70
D=D-A   //D, que es el valor del teclado, le resto A
@LLENARPANTALLALOOP //selecciono ubicacion para posible salto
D;JEQ   //Si D es 0, es decir, si efectivamente presione la letra F, pues D seria 70, y 70-A (A es 70 anteriormente) daria 0

(LLENARPANTALLALOOP)
@R1     //Posicion 1
A=M     //Posicion del valor interno de R1
M=-1    //Al valor interno de R1 le asigno -1
@R1     //Posicion 1
M=M+1   //Posicion 1, le sumo 1 al contador.
D=M     
@24576
D=D-A
@LLENARPANTALLALOOP
D;JLT
@ROMPERRESETEARLOOP
D;JMP

(ROMPERRESETEARLOOP)
//Primero, reseteamos el contador, pues de ser necesario limpiar la pantalla se necesita el contador en la posicion 1, que es SCREEN
@SCREEN //Ubicacion en memoria de la pantalla
D=A     //Guardo la ubicacion de screen en D
@R1     //mi contador, posicion R1 en memoria
M=D     //le guardo la posicion de screen que esta guardada en D
@KBD    //accedo a ubicacion en memoria de teclado
D=M     //guardo en D el valor de la ubicacion KBD
@67     //A es 67
D=D-A   //A D le resto 67, si efectivamente es el mismo numero, es decir, presiono 67 (osea tecla C) daria 0 y el loop de ir a limpiar pantalla se efectua
@LIMPIARPANTALLALOOP
D;JEQ
@ROMPERLOOP
D;JMP

(LIMPIARPANTALLALOOP)
@R1     //Posicion 1
A=M     //Posicion del valor interno de R1
M=0    //Al valor interno de R1 le asigno -1
@R1     //Posicion 1
M=M+1   //Posicion 1, le sumo 1 al contador.
D=M     
@24575
D=D-A
@LLENARPANTALLALOOP
D;JLE
@ROMPERLOOP
D;JMP


// juan sebastian mandon sierra
// 000426587
// juan.mandon@upb.edu.co

//SCREEN IS 16384 to 24575
//KEYBOARD OR KBD IS 24576



