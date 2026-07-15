PROGRAM TESTE !Declare the start of a Fortran program named TESTE; every program must begin with the PROGRAM statement.
	
	IMPLICIT NONE ! This line disables Fortran's "implicit typing."
	
	INTEGER :: n ! Declares the variable n as an integer. The syntax TYPE :: name is the Fortran 90+ standard.
	WRITE(*,*) 'Digite um numero:' !  Exit command. The first * indicates that the output goes to the standard device.
	READ(*,*) n ! Input (read) command. The first * indicates that the input comes from the standard device (keyboard).
	WRITE(*,*) 'O numero que voce escreveu foi: ', n ! Another output command. Prints the text followed by the value of the variable n.
END PROGRAM TESTE ! Marks the end of the program.


