/*
main(){
  print('aula');
  funcao(5,'dart');
}

void funcao(int x, String y){
  print('variável x é $x e y é $y');
  print('O aluno está ${ehAprovado(6, 7, 6)}');
}


bool ehAprovado (double nota1,
double nota2, double mediaAprovacao) {
  var media = (nota1 + nota2) / 2;
  return media >= mediaAprovacao;
}
*/

/* 

bool ehAprovado (double nota1,
double nota2, [double mediaAprovacao=6]) {
  var media = (nota1 + nota2) / 2;
  return media >= mediaAprovacao;
} 
Adicione o parâmetro opcional entre colchetes
O parâmetro opcional deve vir após os obrigatórios!


Também posso adicionar outros parâmetros opcionais entre os colchetes
Se quiser informar a última, terá de informar as opcionais anteriores a ela.

bool ehAprovado (double nota1,
double nota2, [double mediaAprovacao=6, int faltasMaximas=10]) {
  var media = (nota1 + nota2) / 2;
  return media >= mediaAprovacao;
} 

*/

/*

Atividade 06 
Escreva diversos exemplos de funções (sem contexto) nomeadas que possua parâmetro do tipo função e faça a chamada utilizado funções anônimas que possua diversas linhas de código (o quanto for necessário).
Escreva 3 exemplos do seu projeto de funções nomeadas que possua parâmetro do tipo função e faça a chamada utilizado funções anônimas que possua diversas linhas de código (o quanto for necessário).
Escreva um exemplo contextualizado 
- do uso correto de um parâmetro do tipo nulo.
- de uma única função que possua parâmetros nomeados e poscionais. 
- de uma única função que possua parâmetros posicionais com e sem valor padrão. 
- de uma única função que possua parâmetros nomeados com e sem valor padrão. 

Atividade complementar
- Qual a diferença (sintaxe e semântica) entre um parâmetro do tipo nulo e um parâmetro opcional? Explique.
- O que é parâmetro posicional? Quais vantagens e desvantagens? Cite as principais regras.
- O que é parâmetro posicional com valor padrão? Quais vantagens e desvantagens? Cite as principais regras.
- O que é parâmetro nomeado? Quais vantagens e desvantagens? Cite as principais regras.
- Por padrão o parâmetro é obrigatório ou opcional? Justifique.

*/

// Atividade 01 - Parâmetros Posicionais
// - Escreva 3 exemplos do seu projeto contendo todo conteúdo passado;
/*
void cadastro(String nome, int idade, double altura){
  print('Nome: $nome, Idade: $idade, Altura: $altura');
}

main(){
  print("Para continuar seu cadastro, informe:");
  cadastro('João', 25, 1.80);
}
*/

//parâmetros nomeados
// -sintaxe, pq é opcional?
// nomeados obrigatórios;
// nomeados e posicionais;
/*
void funcao(int x, String y){
  print('variável x é $x e y é $y');
  funcaoParamNomeado(nota: 5, nome: 'Maria');
}

//atribuição de valores padrões para as variáveis
void funcaoParamNomeado({int nota=0, String nome='José'}){
  print('nome: $nome, idade: $nota');
}
*/
// Parâmetros nomeados por padrão não são obrigatórios.

/*
void funcaoParamNomeado({required int idade, required String nome}){
  print('nome: $nome, idade: $idade');
}

Esse aqui está utilizando required para tornar obrigatória a digitação do required
*/

/*
Utilizando posicional e nomeável

bool ehAprovado(
  {required nota1,
  required nota2,
  required faltas,
  double mediaAprovacao=6,
  int faltasMaximas=10}) {
    var media = (nota1 + nota2) / 2;
    var ehAprovadoNota = (media >= mediaAprovacao);
    var ehAprovadoFaltas = (faltas <= faltasMaximas);
    return ehAprovadoNota && ehAprovadoFaltas;
  }
*/




//Atividade 02 - Parâmetros Opcionais
//- Escreve 3 exemplos do seu projeto contendo todo conteúdo passado;
/*
main(){
  print("Cadastro de aluno");
  cadastro('Pedro', 28, 1.75, 'Engenharia', 'Noturno');
}

void cadastro(String nome, int idade, [double altura=1.70, String curso='Engenharia', String turno='Noturno']){
  print('Nome: $nome, Idade: $idade, Altura: $altura');
}
*/


/*Atividade 03 - Parâmetros Nomeados
- Escreve 3 exemplos do seu projeto contendo todo conteúdo passado;

import 'dart:io';

main(){
  print("Cadastro de aluno");
  String? nome;
  do {
    print("Informe o nome do aluno: ");
    nome = stdin.readLineSync();
  } while (nome == null || nome== " ");
  print("Informe a idade do aluno: ");
  int idade = int.parse(stdin.readLineSync()!);
  cadastro(nome: nome, idade: idade);
}

void cadastro({
  required String nome, 
  required int idade,  
  String curso='Engenharia', 
  String turno='Noturno'}){
  print('Nome: $nome, Curso: $curso, Idade: $idade, Turno: $turno');
}
*/
/*
main(){
  print('aula');
  funcao(5,'dart');
  ehAprovado(nota1: 10, nota2: 6, calcularMedia: calcularMediaPercentual);
  namesInEnglish(noun: 'apple', verb: 'eat', printNames: partOfSpeech);
}

void funcao(int x, String y){
  print('variável x é $x e y é $y');
  funcaoParamNomeado(nota: 5, nome: 'Maria');
}

void funcaoParamNomeado({int nota=0, String nome='José'}){
  print('nome: $nome, idade: $nota');
}

bool ehAprovado(
  {required double nota1,
  required double nota2,
  required Function(double, double) calcularMedia,
  double mediaAprovacao = 6,
  int faltasMaximas = 10}) {
    var media = calcularMedia(nota1, nota2);
    var ehAprovadoNota = (media >= mediaAprovacao);
    var ehAprovadoFaltas = (faltasMaximas <= faltasMaximas);
    return ehAprovadoNota && ehAprovadoFaltas;
  }

double calcularMediaPercentual(double nota1, double nota2){
  double media = (nota1 * 0.6) + (nota2 * 0.4);
  return media;
}
*/
// criar outro exemplo usando parâmetros do tipo função
// Atividade 04 - Parâmetros do Tipo Função
// - Escreve 3 exemplos do seu projeto contendo todo conteúdo passado;
/*
void namesInEnglish(
  {required String noun,
  required String verb,
  required Function(String, String) printNames}) {
    var names = printNames(noun, verb);
    print(names);
  }

String partOfSpeech(String noun, String verb){
  return "Noun: $noun, Verb: $verb";
}
*/

/*

main(){
  print('aula');
  funcao(5,'dart');
  ehAprovado(
    nota1: 10, nota2: 6, calcularMedia: calcularMediaPercentual,
  ehAprovado(
    nota1: 10,
    nota2: 6,
    calcularMedia: (double n1, double n2)=> (n1 + n2) / 2,
    faltas: 10);
}
*/



// Atividade 05 - Funções Anônimas
// - Utilizando funções anônimas escreva 3 exemplos para o seu projeto 
// contendo todo conteúdo passado;



main(){
  print('aula');
  namesInEnglish(
    noun: 'apple',
    verb: 'eat',
    printNames: (String n, String v) => "Noun: $n, Verb: $v");
}

void namesInEnglish(
  {required String noun,
  required String verb,
  required Function(String, String) printNames}) {
    var names = printNames(noun, verb);
    print(names);
  }


// Yuka: D
// Cauê: D
// Eduardo: D
// Keren: D
// Vinícius: D
// EQUIPE: D