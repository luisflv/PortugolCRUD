programa
{
	cadeia vetNomes[2]
	
	funcao inicio()
	{
		menu()
	}

	funcao menu()
	{
		limpa()

          escreva("=================\n")
		escreva(" 1 - CADASTRAR\n")
		escreva(" 2 - CONSULTAR\n")
		escreva(" 3 - ATUALIZAR\n")
		escreva(" 4 - EXCLUIR\n  ")
		escreva("=================\n")
		
		inteiro opcao
		leia(opcao)

		escolha(opcao)
		{
			caso 1: cadastrar()
			pare
			caso 2: consultar()
			pare
			caso 3: atualizar()
			pare
			caso 4: excluir()
			pare
		}
	}

	funcao cadastrar()
	{
 		limpa()
		
		para(inteiro i = 0; i < 2; i++)
		{
			escreva("Informe um nome: ")
			leia(vetNomes[i])
		}

		menu()
	}

	funcao consultar()
	{
		limpa()
		escreva("Nomes armazenados no vetor...")
		para(inteiro i = 0; i < 2; i++)
		{
			escreva("\n" + i + " " + vetNomes[i])
		}
          
		cadeia tecla
		escreva("\nPressione qualquer tecla para retornar ao menu principal...")
		leia(tecla)
		menu()
	}

	funcao atualizar()
	{
		limpa()
		escreva("Nomes armazenados no vetor...")
		para(inteiro i = 0; i < 2; i++)
		{
			escreva("\n" + i + " " + vetNomes[i])
		}

          cadeia nomeAtualizado
		escreva("\nInforme o índice do nome a ser atualizado: ")
		inteiro indice
		leia(indice)

		para(inteiro i = 0; i < 2; i++)
		{
			se(indice == i)
			{
				escreva("Informe o nome a ser atualizado: ")
				leia(nomeAtualizado)
				vetNomes[i] = nomeAtualizado
				escreva("")
				consultar()
			}
		}
	}

	funcao excluir()
	{
		limpa()
		para(inteiro i = 0; i < 2; i++)
		{
			escreva(i + " " + vetNomes[i] + "\n")
		}

		escreva("Informe o índice do nome a ser excluído: ")
		inteiro indice
		leia(indice)

          vetNomes[indice] = " "

          consultar()
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 82; 
 * @DOBRAMENTO-CODIGO = [4, 9, 36, 49, 64, 91];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */