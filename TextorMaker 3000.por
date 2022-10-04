programa
{
	inclua biblioteca Util
	inclua biblioteca Arquivos --> arq

	// NESSA ATIVIDADE FIZ QUESTÃO DE APRENDER/COMPREENDER A BIBLIOTECA DE CRIAÇÃO E GESTÃO DE ARQUIVOS EXTERNOS

	const cadeia conteudo_arquivo = "./Log.txt" 
	cadeia texto					
	inteiro file

	// CAMINHOS ABSOLUTOS:NÃO DEPENDEM DO AMBIENTE DE EXECUÇÃO DO PROGRAMA, SÃO UTEIS PARA ACESSAR ARQUIVOS QUE ESTÃO SEMPRE NO MESMO LOCAL EXP: C:\USERS/ALUNO/DOCUMENTOS.	
	// CAMINHOS RELATIVOS: DEPENDEM DO DIRETORIO DE TRABALHO, É SIMBOLIZADO POR UM PONTO POR EXEMP "./ARQUIVO.TXT".

	// MODO_LEITURA: NENHUMA ALTERAÇÃO SERA FEITA NO ARQUIVO.
	// MODO_ESCRITA: O ARQUIVO LOGO QUE ABERTO SERA APAGADO, TODOS OS DADO DENTRO DO ARQUIVO.

	funcao inicio()
	{

		inteiro escolha_inicio
		


			limpa()
		escreva("▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼")
		escreva("\n              Seja bem vindo ao TextorMaker 3000\n")
		escreva("▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲")


		escreva("\nO que você deseja fazer:\n")
			escreva("[1] - Criar/inserir Arquivos\n")
			escreva("[2] - Vizualizar linhas\n")
			escreva("[3] - Localização do Arquivo\n")
				leia(escolha_inicio)

		escolha(escolha_inicio)
					{
						caso 1:
						
							escreva("A opção 1 foi escolhida, em 3 segundos você sera direcionado\n")							
								Util.aguarde(1500)		
									cadastrar_arquivo()
													
						pare
						
						caso 2:
						
							escreva("A opção 2 foi escolhida, em 3 segundos você sera direcionado\n")							
								Util.aguarde(1500)		
									listar_linha()						
																			
						pare

						caso 3:
						
							escreva("A opção 3 foi escolhida, em 3 segundos você sera direcionado\n")							
								Util.aguarde(1500)
									localizacao()	
															
																									
						pare

						caso contrario: 

							escreva("A opção escolhida é invalida, tente novamente em 3s\n")
								Util.aguarde(1500)
									inicio()				
					}
							
		
	}

	funcao cadastrar_arquivo()
	
	{
		
		// como o arquivo.abrir_arquivos retorna em inteiro o "file" foi criado para isso
		
		limpa()
		escreva("▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼")
		escreva("\n              Seja bem vindo ao TextorMaker 3000\n")
		escreva("▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲")

						file = arq.abrir_arquivo(conteudo_arquivo,arq.MODO_ESCRITA)// aqui esta sendo feito abertura do arquivo em modo escrita					

							para (inteiro i = 1; i < 10; i++)
								{
									escreva("\nDigite o conteúdo da, ", i ,"º linha : \n")
										leia(texto)
											arq.escrever_linha(texto, file)//sera feito o registro de uma linha dentro do arquivo, usando a variavel que o usuario inseriu o Texto e tbm o endereço
							
								}
															
								arq.fechar_arquivo(file)// e com essa linha o arquivo é fechado
								
									escreva("\nArquivo foi criado junto com o conteudo inserido \n")
										Util.aguarde(3000)
											inicio()
	
	}

	funcao localizacao()
	{
		escreva("▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼")
		escreva("\n              Seja bem vindo ao TextorMaker 3000\n")
		escreva("▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲\n")
		
		escreva("\nArquivo de texto se econtra na mesma pasta que você abriu o save desse programa\n")
			escreva("Retornando para o inicio em 5s\n")
				Util.aguarde(5000)
					inicio()
			
					
	}
	
	funcao listar_linha()
	{
		limpa()
		
		cadeia exibir[11] // ira receber o conteudo do arquivo para poder exibir
		logico existe_arq // a função arquivo_existe ira retornar em logico se exite ou nao o arquivo 
		
		
		escreva("▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼")
		escreva("\n              Seja bem vindo ao TextorMaker 3000\n")
		escreva("▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲")
				escreva("\nAbrindo o arquivo\n")				
				existe_arq = arq.arquivo_existe(conteudo_arquivo) // sera feita a verificação se existe algum arquivo para exibir, caso nao existir ira retornar falso
					se (existe_arq) // caso for verdadeiro ira exibir o texto
					{
						file = arq.abrir_arquivo(conteudo_arquivo, arq.MODO_LEITURA)// abrindo o arquivo no modo leitura
						

						para( inteiro i = 1; i < 11; i++)
						{
						
						exibir[i] = arq.ler_linha(file) // o exibir recebera o conteudo do arquivo

							escreva("\n",exibir[i])
						}
														
								arq.fechar_arquivo(file)//fechando o arquivo

								escreva("\nvocê ira retornar para o inicio em 10s")
								
									Util.aguarde(10000)
										inicio()	
					}	

					senao // se retornar falso ira dizer que não existe arquivo e mandara o usuario de volta para o inicio
					{
						escreva("não há Texto para exibir, cadastre um para poder ser feito a exibição\n")
							Util.aguarde(5000)
								inicio()
					}
		
	}


	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4547; 
 * @DOBRAMENTO-CODIGO = [36, 86, 73, 102];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = vetor, matriz, funcao;
 */