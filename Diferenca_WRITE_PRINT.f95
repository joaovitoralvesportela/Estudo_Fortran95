! Diferenca entre WRITE e PRINT em fortran
! Difference between WRITE and PRINT in Fortran
! Unterschied zwischen WRITE und PRINT in Fortran

PROGRAM EXEMPLO

	! Ambos sao usados para saida de dados, mas tem diferencas
	! Both are used for data output, but there are differences.
	! Beide werden für die Datenausgabe verwendet, aber es gibt Unterschiede.
	IMPLICIT NONE
	
	INTEGER :: x = 40
	INTEGER :: ios
	
	
	PRINT *, 'HELLO WORLD'
    PRINT '(A, I5)', 'VALOR', x
	
	! Sempre escreve na saida padrao (geralmente o terminal/console)
	! Sintaxe mais simples
	! Nao permite especificar uma unidade(unit) de saida
	
	WRITE(*,*) 'HELLO WORLD'
    WRITE(6,*) 'VALOR', x
	
	OPEN(UNIT=10, FILE='Saida.txt', STATUS='replace')
    WRITE(10,*) 'Gravando em arquivo'
	
	
	! Permite especificar uma unidade de saida(unit) , pode ser a tela, arquivo ou outro dispositivo
	! O * no lugar da unidade significa saida padrao(Equivalente ao print)
	! Um numero (como 6 ou 10) indica uma unidade especifica, geralmente associado ao um arquivo open 
	! Aceita mais especificadores opcionais, como (iostat, err, advance , etc)
	! Eh a forma preferida quando voce precisa escrever em arquivos
	
	! Exemplo pratico  
	
	OPEN(UNIT=20, FILE='saida2.txt', STATUS='replace')
    WRITE(UNIT=20, FMT='(A)', IOSTAT=ios) 'TEXTO'
	
	! Usando o WRITE para gravar em arquivo
	
	
	PRINT *, 'Valor de x via (PRINT)', x
    WRITE(*,*) 'Valor de x via (WRITE)', x
	
	WRITE(10,*) 'Valor de x (arquivo):', x
	
	CLOSE(10)
	CLOSE(20)

END PROGRAM EXEMPLO
