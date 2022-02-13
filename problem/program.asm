@SCREEN //Ubicacion en memoria de la pantalla
D=A     //Guardo la ubicacion de screen en D
@R1 //mi contador, posicion R1 en memoria
M=D //guardo el valor D en A (basicamente inicializo el valor de R1, mi contador, a 16384)
(SCREENFILL)
@R1
A=M
M=-1
@R1
M=M+1
D=M
@24575
D=D-A
@SCREENFILL
D;JLE
@BREAK
D;JMP

(BREAK)
@BREAK
D;JMP


// juan sebastian mandon sierra
// 000426587
// juan.mandon@upb.edu.co

//SCREEN IS 16384 to 24575
//KEYBOARD OR KBD IS 24576



