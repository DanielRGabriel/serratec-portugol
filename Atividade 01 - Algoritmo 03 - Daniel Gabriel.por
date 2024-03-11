programa
{
	inclua biblioteca Matematica --> mat

	funcao inicio()
{
    // Declaração das variáveis
    real salario, base_de_calculo, aliquota, parcela_deduzir, imposto_a_pagar,imposto_a_pagar_arredondado
    inteiro dependentes

    // Solicita ao usuário o salário e o número de dependentes
    escreva("Digite o salário do funcionário: R$ ")
    leia(salario)
    escreva("Digite o número de dependentes: ")
    leia(dependentes)

    // Verifica a base de cálculo
    se (salario <= 2112.00) { 
        base_de_calculo = salario
        aliquota = 0.0
        parcela_deduzir = 0.0
    } senao se ((salario > 2112.00) e (salario <= 2826.65)) { 
        base_de_calculo = salario
        aliquota = 7.5
        parcela_deduzir = 158.40 * dependentes
    } senao se ((salario > 2826.65) e (salario <= 3751.05)) {
        base_de_calculo = salario
        aliquota = 15.0
        parcela_deduzir = 370.40 * dependentes
    } senao se ((salario > 3751.05) e (salario <= 4664.68)) {
        base_de_calculo = salario
        aliquota = 22.5
        parcela_deduzir = 651.73 * dependentes
    } senao {
        base_de_calculo = salario
        aliquota = 27.5
        parcela_deduzir = 884.96 * dependentes
    }

    // Calcula o imposto a pagar
    imposto_a_pagar = (base_de_calculo * (aliquota / 100)) - parcela_deduzir
    imposto_a_pagar_arredondado = mat.arredondar( imposto_a_pagar,3)

    // Verifica se o imposto a pagar é negativo e o ajusta para zero se necessário
    se (imposto_a_pagar < 0) {
        imposto_a_pagar = 0
    }
    
    // Exibe os resultados
    escreva("Base de Cálculo: R$ "+ base_de_calculo)
    escreva("\nAlíquota IR: "+ aliquota, "%")
    
    escreva("\nParcela a deduzir: R$ "+ parcela_deduzir)
    escreva("\nImposto a pagar: R$ "+ imposto_a_pagar_arredondado)
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1536; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */