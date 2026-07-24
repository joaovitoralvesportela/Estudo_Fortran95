! =============Tipos de dados primitivos===================|
! ---------------------------------------------------------|
! | TIPO    |   VALOR  |  OBSERVACAO                       |
! |_________|__________|___________________________________|
! |	***		| ******** | **********************************|
! |	INTEGER	| (1,2)    |                                   |
! |	--------|----------|-----------------------------------|
! |	REAL	| (1.75)   |								   |
! |	-------	|----------| ----------------------------------|
! |	COMPLEX	|(2.0, 3.0)| parte real e a parte imaginária   |
! | ------- |----------|-----------------------------------|
! | LOGICAL | (BOOLEAN)| VALORES TRUE E FALSE              |
! | ------- |----------|-----------------------------------|
! | CHARATER| (STRING) | ARMAZENA TEXTO                    |
! | ------- |----------| ----------------------------------|
! | EXEMPLO DE USO DE DADOS PRIMITIVOS EM FORTRAN 95       |
! | ------- | ---------| ----------------------------------|

!|---------------------------------------------------------|
!|************TIPO DE DADO PRIMITIVO INTEGER***************|
!|---------------------------------------------------------| 

PROGRAM exemplo_integer

	IMPLICIT NONE
	
	INTEGER :: idade
	INTEGER :: ano_nascimento
	
	idade = 20
	ano_nascimento = 2006
	
	PRINT *, "Idade:", idade
	PRINT *, "Ano de nascimento:", ano_nascimento

END PROGRAM exemplo_integer

! ****** Outro exemplo: ******
!
 PROGRAM exemplo_2
   INTEGER :: a,b,soma
 	a = 10
    b = 20
 	soma = a + b
	PRINT *, "Soma = " , soma
 END PROGRAM exemplo_2

!|------------------------------------------------------|
!|************TIPO DE DADO PRIMITIVO REAL***************|
!|------------------------------------------------------|

PROGRAM exemplo_real

	IMPLICIT NONE
	
	REAL :: altura 
	REAL :: peso
	
	altura = 1.75
	peso = 68.3

	PRINT *, "Altura:" , altura
	PRINT *, "Peso:" , peso
	
END PROGRAM exemplo_real

! *****Outro exemplo:*****

PROGRAM exemplo_real_2

	IMPLICIT NONE
	REAL :: a, b , media
	
	a = 7.5
	b = 8.2
	media = (a + b) / 2
	
	PRINT *, "Media = ", media

END PROGRAM exemplo_real_2


!|------------------------------------------------------|
!|************TIPO DE DADO PRIMITIVO COMPLEX************|
!|------------------------------------------------------|


PROGRAM exemplo_complexo

	IMPLICIT NONE
	
	COMPLEX :: numero1
	COMPLEX :: numero2
	COMPLEX :: soma
	
	numero1 = (2.0, 3.0) 
	numero2 = (1.0 , -1.0)
	
	soma = numero1 + numero2
	
	PRINT *, "Numero 1 = " , numero1
	PRINT *, "Numero 2 = " , numero2
	PRINT *, "Soma = " , soma
	
END PROGRAM exemplo_complexo

! |-----------------------------------------------------|
! |*******FUNCOES PARA TRANBALHAR COM FORTRAN***********|
! |-----------------------------------------------------|
! | real(numero1) -> pega a parte real *****************|
! |-----------------------------------------------------|
! | aimag(numero1) -> pega a parte imaginaria **********|
! |-----------------------------------------------------|
! | conjg(numero1) -> calcula o conjugado **************|
! |-----------------------------------------------------|
! | abs(numero1) -> calcula o modulo (magnitude) *******|
! |-----------------------------------------------------|


!|------------------------------------------------------|
!|************TIPO DE DADO PRIMITIVO LOGICAL************|
!|------------------------------------------------------|

PROGRAM exemplo_logical

	IMPLICIT NONE 
	
	LOGICAL :: aprovado
	LOGICAL :: tem_desconto
	
	aprovado = .TRUE.
	tem_desconto = .FALSE.
	
	PRINT *, "Aprovado:" , aprovado
	PRINT *, "Tem desconto:" , tem_desconto
	
END PROGRAM exemplo_logical

! ******Outro exemplo****

PROGRAM exemplo_logical_2

	IMPLICIT NONE 
	
	LOGICAL :: chove, tem_quarda_chuva, vai_se_molhar
	
	chove = .TRUE.
	tem_quarda_chuva = .FALSE.
	vai_se_molhar = chove .AND. .NOT. tem_quarda_chuva
	
	PRINT *, "Vai se molhar:", vai_se_molhar

END PROGRAM exemplo_logical_2

!|------------------------------------------------------|
!|************TIPO DE DADO PRIMITIVO CHARACTER**********|
!|------------------------------------------------------|

PROGRAM exemplo_character
	
	IMPLICIT NONE
	
	CHARACTER(LEN=20) :: nome
	CHARACTER(LEN=1) :: inicial
	
	nome = "Maria"
	inicial = "M"
	
	PRINT *, "Nome: " , nome
	PRINT *, "Inicial: ", inicial


END PROGRAM exemplo_character

! ----Outro exemplo-----
! Usando Concatenacao

PROGRAM exemplo_character_2

	IMPLICIT NONE
	
	CHARACTER(LEN=10) :: nome
	CHARACTER(LEN=10) :: sobrenome
	CHARACTER(LEN=20) :: nome_completo
	
	nome = "Maria"
	sobrenome = "Silva"
	nome_completo = TRIM(nome) //" "//TRIM(sobrenome)
	
	PRINT *, "Nome Completo: " , nome_completo

END PROGRAM exemplo_character_2

!|-----------------------------------------------------------------|
!|*************************OBSERVACOES*****************************|
!|-----------------------------------------------------------------|
!| TRIM() -> Remove os espacos em branco extras no final da String |
!|-----------------------------------------------------------------|
!| LEN() -> Retorna o tamanho dos caracteres declarados da variavel|
!|-----------------------------------------------------------------|
!|LEN_TRIM()-> Retorna o tamanho real do conteudo(sem espaco extra)|
!|-----------------------------------------------------------------|

