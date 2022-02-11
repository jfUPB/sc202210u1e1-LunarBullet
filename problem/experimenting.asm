// Juan Sebastian Mandon Sierra
// 000426587
// juan.mandon@upb.edu.co

//Screen is from 16384 to 24575, must fill em' all with -1's
//Keyboard is 24576



@SCREEN
D=A
@R1 //location so i can store the current ram address of screen (starts at 16384 all the way to  = 24576)
M=D
A=M+1 //This lil' piece of code allows me to go to the screen + 1 address! i can even modify the mem value of such address!
M=1







