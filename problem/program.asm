(INICIO)
@SCREEN //Ubicacion en memoria de la pantalla
D=A     //Guardo la ubicacion de screen en D
@R1     //mi contador, posicion R1 en memoria
M=D     //guardo el valor D en A (basicamente inicializo el valor de R1, mi contador, a 16384)
@KBD    //Posicion input del teclado
D=M     //Almaceno la letra del teclado en memoria
@70     //Posicion 70
D=D-A   //D, que es el valor del teclado, le resto A
@LLENARPANTALLALOOP //selecciono ubicacion para posible salto
D;JEQ   //Si D es 0, es decir, si efectivamente presione la letra F, pues D seria 70, y 70-A (A es 70 anteriormente) daria 0
@KBD    //Posicion input del teclado
D=M     //Almaceno la letra del teclado en memoria
@67     //Posicion 67
D=D-A   //D, que es el valor del teclado, le resto A
@LIMPIARPANTALLALOOP //selecciono ubicacion para posible salto
D;JEQ   //Si D es 0, es decir, si efectivamente presione la letra C, pues D seria 67, y 67-A (A es 67 anteriormente) daria 0
@INICIO
D;JMP //salto a inicio

(LLENARPANTALLALOOP)
@R1     //Posicion 1
A=M     //Posicion del valor interno de R1
M=-1    //Al valor interno de R1 le asigno -1
@R1     //Posicion 1
M=M+1   //Posicion 1, le sumo 1 al contador.
D=M     //D = valor en memoria de R1
@R1
D=M
@24575
D=D-A
@INICIO
D;JEQ
@LLENARPANTALLALOOP
D;JMP

(LIMPIARPANTALLALOOP)
@R1     //Posicion 1
A=M     //Posicion del valor interno de R1
M=0    //Al valor interno de R1 le asigno -1
@R1     //Posicion 1
M=M+1   //Posicion 1, le sumo 1 al contador.
D=M     //D = valor en memoria de R1
@R1
D=M
@24575
D=D-A
@INICIO
D;JEQ
@LIMPIARPANTALLALOOP
D;JMP


// juan sebastian mandon sierra
// 000426587
// juan.mandon@upb.edu.co

//SCREEN IS 16384 to 24575
//KEYBOARD OR KBD IS 24576



