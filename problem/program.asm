(INPUTLOOP)
@KBD //nos ubicamos en la posicion del input teclado 24575
D=M  //Guardamos en D el valor de la posicion (para ver si presiona F o C!)
@R2     //Accedemos a la posicion R2 (acà guardaremos el valor de KBD para nuestra logica de saber si es F o C)
M=D     //Almacenamos el valor que nos dio KBD, que esta en D, en la memoria de R2
@INPUTLOOP
D;JEQ
@R2
D=M
@70
D=D-A
@BLACKLOOPSTART
D;JEQ
@SCREEN //guardamos a ubicacion 16384 en A
D=A     //Asignamos a D el valor de A (16384)
@R1     //Ubicacion 1, nuestro contador de ubicaciones para screen
M=D     //Asignamos a ubicacion 1 el valor de D (16384)
A=M+1   //Vamos a la la ubicacion 16384+1
M=-1    // A la ubicacion 16384+1 le asignamos valor de -1
@SCREEN //@16384
D=A     //guardo en D el valor 16384
@R1     //accedo a R1
(BLACKLOOPSTART)
//primero verificamos caso que se presione la tecla C
@KBD
D=M
@67
D=D-A
@BLANKLOOPSTART //Si se presiona, pues vamos al loop de limpìar pantalla
D;JEQ
//Loop de todo negro inicia aca
M=D     //Le doy el valor de 16384 a R1 --start of black fill loop--
@R1     //posicion en memoria 1
A=M     //A = M de R1 (basicamente la escencia del contador!)
M=-1    //a la ubicacion A, que es @R1 le ponemos el valor en memoria de -1
@R1     //vamos a la ubicacion del contador R1
M=M+1   //Sumamos +1 Al contador R1
@R1     //vamos a la ubicacion @R1
D=A     //Guardamos en D el valor @R1
@24576 //quiero lograr: IF D<24576 go to line BLACKLOOPSTART; A=24576
D=D-A   //D = (la ubicacion almacenada en D, que es @R1)-(24576, que es el valor almacenado en A anterior) = -1
@BLACKLOOPSTART     
D;JLT //Si D es menor a 0, vamos a @BLACKLOOPSTART

(BLANKLOOPSTART)
//primero verificamos caso que se presione la tecla F
@KBD
D=M
@70
D=D-A
@BLACKLOOPSTART //Si se presiona, pues vamos al loop de limpiar pantalla
D;JEQ
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

// Juan Sebastian Mandon Sierra
// 000426587
// juan.mandon@upb.edu.co
//Mezcle ingles y español (normalmente documento en ingles) espero que no sea problema! 

//Screen is from 16384 to 24575, must fill em' all with -1's so its fully black!
//Keyboard @ is 24576








