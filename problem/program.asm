@SCREEN //guardamos a ubicacion 16384 en A
M=-1    //Asignamos el valor -1 a la ubicacion 16384 en memoria
@SCREEN //guardamos a ubicacion 16384 en A
D=A     //Asignamos a D el valor de A (16384)
@R1     //Ubicacion 1, nuestro contador de ubicaciones para screen
M=D     //Asignamos a ubicacion 1 el valor de D (16384)
A=M+1   //Vamos a la la ubicacion 16384+1
M=-1    // A la ubicacion 16384+1 le asignamos valor de -1
@SCREEN //@16384
D=A     //guardo en D el valor 16384
@R1     //accedo a R1
M=D     //Le doy el valor de 16384
@R1 //------- LOOP -------- IF D<24575 go to line 9; A=24575
A=M     //A = M de R1
M=-1    //A la ubicacion A = M de R1 le ponemos el valor en memoria de -1
@R1     //vamos a la ubicacion del contador R1
M=A+1   //Sumamos +1 Al contador R1
@R1
D=A
@24576 //quiero lograr: IF D<24576 go to line 9; A=24576
D=D-A   //D = @R1-24576 = -1
@8
D;JLT //if D<0, go to @9

// Juan Sebastian Mandon Sierra
// 000426587
// juan.mandon@upb.edu.co

//Screen is from 16384 to 24575, must fill em' all with -1's
//Keyboard is 24576








