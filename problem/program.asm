@SCREEN //Ubicacion en memoria de la pantalla
D=A     //Guardo la ubicacion de screen en D
@R1     //mi contador, posicion R1 en memoria
M=D     //guardo el valor D en A (basicamente inicializo el valor de R1, mi contador, a 16384)
(LLENARPANTALLALOOP)
@R1     //Posicion 1
A=M     //Posicion del valor interno de R1
M=-1    //Al valor interno de R1 le asigno -1
@R1     //Posicion 1
M=M+1   //Posicion 1, le sumo 1 al contador.
D=M     
@24575
D=D-A
@LLENARPANTALLALOOP
D;JLE



// juan sebastian mandon sierra
// 000426587
// juan.mandon@upb.edu.co

//SCREEN IS 16384 to 24575
//KEYBOARD OR KBD IS 24576



