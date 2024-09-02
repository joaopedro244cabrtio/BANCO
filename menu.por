programa {
  funcao inicio() {

    inteiro menu = 1 ,saldo = 0 , saque = 0 , deposito = 0 ,  mes = 0 , cal
    cadeia extrato=""
    real investimento = 0

    enquanto( menu < 6 e menu > 0 ){
    escreva("---------menu---------\n")
    escreva("1-Saque\n")
    escreva("2-Deposito\n")
    escreva("3-Extrato\n")
    escreva("4-Saldo\n")
    escreva("5-Investimento\n")
    escreva("0-Sair\n")
    leia(menu)
    limpa()

    escolha(menu){
      caso 1:
      escreva("Qual o valor do saque: ")
      leia(saque)

       se(saque <= 0 ){
        escreva("saque invalido\n")
      }
      senao se (saque <= saldo ){
        escreva("Seu saque foi realizado com sucesso\n")

         extrato= extrato + "saque-----R$"+ saque+"\n"
         saldo = saldo - saque 
      }
     

      senao{
        escreva("Saque invalido\n")
        
      }
      pare
      caso 2: 
      escreva("Qual o valor de deposito: ")
      leia(deposito)

      saldo = deposito + saldo 

      extrato= extrato + "deposito-----R$"+ deposito +"\n"
      pare
      
      caso 3: 
      escreva(extrato)
      pare
      
      caso 4:
       
      escreva("Seu saldo e de: ", saldo , "\n")

      pare 

      caso 5:

      escreva("Qual o valor de investimento: ")
      leia(investimento)
      escreva("Quantos meses voce quer investir: ")
      leia(mes)

      se(saldo >=investimento){
      	
		saldo = saldo - investimento 
		
      	para(inteiro contador = 1; contador <= mes ; contador++){

      		cal = investimento * 1.02
      		investimento = cal 
      	}

		
      		
	 	escreva("seu investimento foi de: ", investimento,"\n")
      	}
      	senao{
      		escreva("Não autorizado\n")
      	}
	  pare
      


   
    }


    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1625; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */