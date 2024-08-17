programa
{
	inteiro contPessoas=0, pacienteInt=0
	real totalConsultas=0.0, totalInt=0.0
	cadeia developers[5] = {"Rafael", "Felipe", "Patrick", "Suru", "Deny"}
	funcao inicio()
	{
		inteiro opcao
		cadeia nome="",telefone="" , especialidade="", quartos[20]
		faca{
		menu()
		escreva("Digite a opção desejada: ")
		leia(opcao)
		escolha(opcao){

			caso 1: consulta(nome, telefone, especialidade)
			pare
			caso 2: internacao(quartos, nome, telefone)
			pare
			caso 3: listarQuartos(quartos)
		     pare
		     caso 4: faturamento()
		     pare
		     caso 5: sair(developers)
		     pare
			caso contrario: escreva("contrario")
			pare
		}
		}enquanto(opcao!=5)
	}
	//opcao1
	funcao consulta(cadeia &nome,cadeia &tel, cadeia &esp ){
		dadosDoPaciente(nome, tel, esp)
		se(esp=="pediatria"){
			contPessoas++
			totalConsultas+= 150
			}senao{
				contPessoas++
			totalConsultas+= 120
				}
			escreva("\nNúmero de consultas:",contPessoas,"\nFaturamento consultas:" ,totalConsultas,"\nConsulta realizada com sucesso!\n")
		}
	//opcao2
	funcao internacao(cadeia &quartos[], cadeia &nome, cadeia &telefone){
		para(inteiro i=0; i < 20; i++){
		se(quartos[i]==""){
			escreva("\nNome do paciente: ")
			leia(nome)
			escreva("\nTelefone paciente: ")
			leia(telefone)
			escreva("\nQuarto reservado com sucesso, para o paciente:",nome,"\n")
			quartos[i]=nome+" / "+telefone
			pacienteInt++
			totalInt += 500
			pare
			}senao se(quartos[i]!=""){}senao{
			escreva("Todos os quartos estão ocupados!")
			pare
			}
		}
		}
		//opcao3
	funcao listarQuartos(cadeia a[]){
		escreva("\nLista dos quartos: \n")
              para(inteiro i = 0; i < 20; i++){
                  se(a[i] != ""){
                      escreva(i+1," ---> ",a[i],"\n")
                      }senao{escreva(i+1," --->\n")}
              }
		}
	//opcao4
	funcao faturamento(){
		escreva("Número de consultas: ", contPessoas)
		escreva("\nNúmero de internações: ", pacienteInt)
		escreva("\nFaturamento de consultas: ", totalConsultas)
		escreva("\nFaturamento de internações: ", totalInt)
		escreva("\nFaturamento geral: ", totalConsultas+totalInt, "\n")
		}
		//caso5
		funcao sair(cadeia a[]){
            escreva("\n--------------------------------------")
            escreva("\n---Obrigado por utilizar nosso APP!---\n")
            escreva("--------------------------------------\n\n")
            escreva("Turma: 20  Grupo: 5\n\n")
            escreva("Desenvolvedores: \n")
            para(inteiro i=0; i < 5; i++){
            escreva("*",a[i],"\n")
        }
        }
	//dados
	funcao dadosDoPaciente(cadeia &a, cadeia &b, cadeia &c){
			 inteiro opcao
        escreva("Escreva o nome do paciente:")
            leia(a)
        escreva("\nDigite o telefone do paciente:")
            leia(b)
        escreva("\nEscolha a especialidade: ",
        "\n1- Pediatria",
        "\n2- Outro",
        "\ndigite sua escolha:")
        leia(opcao)
        faca{
        escolha(opcao){
        	caso 1: c="pediatria"
        	pare
        	caso 2: c="outro"
        	pare
        	caso contrario: escreva("opção invalida")
        	pare
        }
        }enquanto(opcao!=1 e opcao!=2)
        }
	//menu
	funcao menu(){
	escreva("\nHOSPITAL - XPTO\n",
"----------------------------------\n",
"1-Consulta Ambulatorial\n",
"2-Internação\n",
"3-Listar Quartos\n",
"4-Faturamento\n",
"5-Sair do Programa\n",
"----------------------------------\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1491; 
 * @DOBRAMENTO-CODIGO = [62, 71, 79];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */