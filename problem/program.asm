@SCREEN //Ubicacion en memoria de la pantalla
D=A     //Guardo la ubicacion de screen en D
@25     //mi contador, posicion R1 en memoria
M=D     //guardo el valor D en A (basicamente inicializo el valor de R1, mi contador, a 16384)
(LLENARPANTALLALOOP)
@25 
A=M
M=-1
@25
M=M+1
M=D
@24575
D=D-A
@LLENARPANTALLALOOP
D;JLE
@ROMPERLOOP
D;JMP

(ROMPERLOOP)
@ROMPERLOOP
D;JMP


// juan sebastian mandon sierra
// 000426587
// juan.mandon@upb.edu.co

//SCREEN IS 16384 to 24575
//KEYBOARD OR KBD IS 24576



