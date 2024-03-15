/*

Diário de Aula
- Classes e objetos: 
	- sintaxe (adaptação, recomendado, com e sem referência);
	- construtor (conceitos básicos; método/função?; parâmetros posicionais, valor padrão, nomeados, nomeados obrigatórios); 
	- atributos: sintaxe; uso do this; modificador de acesso; getters/setters - recomendação;
	- métodos: sintaxe; parâmetros;
	- associação: sintaxe; atribuição atributo/construtor; atribuição parâmetro posicional/nomeado; parâmetro nomeado com e sem referência;
	- herança;
	- classes abstratas/modelo;


- exemplos e resolução de exercícios (estudo de caso e do seu projeto)

Material de aula
https://dart.dev/language/class-modifiers
https://dart.dev/tools/linter-rules/unnecessary_getters_setters    

*/

import 'dart:io';

import 'package:flutter_application_1/minha_classe.dart';
import 'package:flutter_application_1/sua_classe.dart';

/*
void main (List<String> args) {
  MinhaClasse mc = new MinhaClasse(1,2);
  var mc2 = MinhaClasse(2, 10); // Utilizar este modelo.
  MinhaClasse(3,3); // Não possui REFERÊNCIA, não é recomendado.
*/

/*
  void main (List<String> args) {
  String email = '';
  String senha = '';
  String estado = '';
  String cidade = '';
  
  MinhaClasse mc = new MinhaClasse(x: 1,y: 2);
  var mc2 = MinhaClasse(x: 2,y: 10); // Utilizar este modelo.
  MinhaClasse(x: 3,y: 3); // Não possui REFERÊNCIA, não é recomendado.

  print('Informe o email: ');
  email = stdin.readLineSync()!;

  print('Informe a senha: ');
  senha = stdin.readLineSync()!;

  Login l1 = new Login(email: email,senha: senha);  

}
*/

void main (List<String> args) {
  var estado = Estado(id: 1, nome: 'Paraná', sigla: 'PR');

  var cidade = Cidade(id: 1, nome: 'Paranavaí', estado: estado);
}