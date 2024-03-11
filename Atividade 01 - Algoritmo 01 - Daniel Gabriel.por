programa
{
	inclua biblioteca Matematica --> mat
	
	
	funcao inicio()
	{
		real peso,altura,imc,imc_arredondado

		escreva("Qual o peso do paciente (em kg): ")
		leia(peso)
		escreva("Digite a altua do paciente (em metros, com ponto): ")
		leia(altura)

		imc = peso / (altura * altura)

		imc_arredondado = mat.arredondar(imc, 1)

		escreva("O IMC do paciente é: " + imc_arredondado )

		se (imc < 18.5 ){
		    escreva("\nClassificação: Baixo peso")
		}senao se ((imc > 18.5) e (imc < 24.9)) {
		    escreva("\nClassificação: Peso saudável")
		}senao se ((imc >= 25) e (imc < 29.9)){ 
		    escreva("\nClassificação: Sobrepeso")
		}senao {
		    escreva("\nClassificação: Obesidade")
		
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 703; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */