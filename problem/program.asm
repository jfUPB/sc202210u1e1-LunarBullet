@SCREEN //Ubicacion en memoria de la pantalla
@R1 //mi contador, posicion R1 en memoria
M=D //guardo el valor D en A (basicamente inicializo el valor de R1, mi contador, a 16384)
(LLENARPANTALLALOOP)
@R1
A=M
M=-1
@R1
M=M+1
D=M
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



