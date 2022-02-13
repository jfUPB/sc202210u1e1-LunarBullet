@SCREEN //@16384
D=A     //guardo en D el valor 16384
@R1     //accedo a R1
(BLACKLOOPSTART)
//Loop de todo negro inicia aca
M=D     //Le doy el valor de 16384 a R1 --start of black fill loop--
@R1     //posicion en memoria 1
A=M     //A = M de R1 (basicamente la escencia del contador!)
M=-1    //a la ubicacion A, que es @R1 le ponemos el valor en memoria de -1
@R1     //vamos a la ubicacion del contador R1
D=M
@24576
D=D-A
@LOOPBREAKER
D;JEQ
@R1
M=M+1   //Sumamos +1 Al contador R1
@R1     //vamos a la ubicacion @R1
D=A     //Guardamos en D el valor @R1
@24576 //quiero lograr: IF D<24576 go to line BLACKLOOPSTART; A=24576
D=D-A   //D = (la ubicacion almacenada en D, que es @R1)-(24576, que es el valor almacenado en A anterior) = -1
@BLACKLOOPSTART     
D;JLT //Si D es menor a 0, vamos a @BLACKLOOPSTART


(BLANKLOOPSTART)

//Loop de todo negro inicia aca
M=D     //Le doy el valor de 16384 a R1 --start of black fill loop--
@R3     //posicion en memoria 3
A=M     //A = M de R1 (basicamente la escencia del contador!)
M=0    //a la ubicacion A, que es @R1 le ponemos el valor en memoria de -1
@R1     //vamos a la ubicacion del contador R1
M=M+1   //Sumamos +1 Al contador R1
@R1     //vamos a la ubicacion @R1
D=A     //Guardamos en D el valor @R1
@24576 //quiero lograr: IF D<24576 go to line BLANKLOOPSTART; A=24576
D=D-A   //D = (la ubicacion almacenada en D, que es @R3)-(24576, que es el valor almacenado en A anterior) = 0
@BLACKLOOPSTART     
D;JLT //Si D es menor a 0, vamos a @BLANKLOOPSTART

(LOOPBREAKER)
D=0
@LOOPBREAKER
D;JEQ

// Juan Sebastian Mandon Sierra
// 000426587
// juan.mandon@upb.edu.co
//Mezcle ingles y español (normalmente documento en ingles) espero que no sea problema! 

//Screen is from 16384 to 24575, must fill em' all with -1's so its fully black!
//Keyboard @ is 24576








