programa
{
	
	funcao inicio()
	{// Declaração das variáveis
    inteiro dia, mes, ano
    logico bissexto

    // Solicita ao usuário o dia, mês e ano
    escreva("Digite o dia: ")
    leia(dia)
    escreva("Digite o mês: ")
    leia(mes)
    escreva("Digite o ano: ")
    leia(ano)

    // Verifica se o ano é bissexto
    se ((ano % 4 == 0) e ((ano % 100 != 0) ou (ano % 400 == 0))) { 
        bissexto = verdadeiro
    }
    senao {
        bissexto  = falso
    }

    // Verifica se o dia está dentro do intervalo correto
    se ((dia >= 1) e (dia <= 31)) {
        // Verifica se o mês é fevereiro e o dia é maior que 28
        se ((mes == 2) e (dia > 28)) {
            escreva("Data inválida.")
        }
        // Verifica se o mês tem 30 dias
        senao se ((mes == 4) ou (mes == 6) ou (mes == 9) ou (mes == 11)) {
            se (dia > 30) {
                escreva("Data inválida.")
            }
            senao {
                escreva("Data válida.")
            }
        }
        // Verifica se o mês tem 31 dias
        senao se ((dia <= 31)) {
            escreva("Data válida.")
        }
        senao {
            escreva("Data inválida.")
        }
    }
    senao {
        escreva("Data inválida.")
    }
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 428; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */