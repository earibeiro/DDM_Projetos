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

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ativ02.dart';
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
  var parana = Estado(
    id: 1, nome: 'Paraná', sigla: 'PR');

  var paranavai = Cidade(
    id: 1, nome: 'Paranavaí', estado: parana);

  var navirai = Cidade(
    id: 2, nome: 'Naviraí', estado: Estado(
      id: 2, nome: 'Mato Grosso do Sul', sigla: 'MS'),);

  var maringa = Cidade(
    id: 3, nome: 'Maringá', estado: parana);

  var matogrossodosul = Estado(
    id: 2, nome: 'Mato Grosso do Sul', sigla: 'MS');

  

  var venda1 = Venda(id: 1, 
  cliente: Cliente(id: 1,nome: 'Eduardo', 
  cidadeTrabalho: maringa, 
  cidadeMoradia: paranavai), 
  fornecedor: Fornecedor (id: 1, nome: 'Jo', 
  cidadeTrabalho: maringa, 
  cidadeMoradia: maringa),
  calcularComissao: (double valor, double percentual) => valor * percentual / 100);
      

var venda2 = Venda(id: 2,
cliente: Cliente(id: 2, nome: 'João',
cidadeTrabalho: Cidade(
  id: 4, nome: 'João Pessoa', estado: Estado(
    id: 3, nome: 'Paraíba', sigla: 'PB')),
cidadeMoradia: Cidade(
    id: 5, nome: 'Campina Grande', estado: Estado(
      id: 3, nome: 'Paraíba', sigla: 'PB'))),
fornecedor: Fornecedor (id: 2, nome: 'Joaquina',
  cidadeTrabalho: Cidade(
    id: 4, nome: 'João Pessoa', estado: Estado(
      id: 3, nome: 'Paraíba', sigla: 'PB')),
  cidadeMoradia: Cidade(
    id: 5, nome: 'Campina Grande', estado: Estado(
        id: 3, nome: 'Paraíba', sigla: 'PB'))),
  calcularComissao: (double valor, double percentual) => valor * percentual / 100);
  
      ;
        
      
    
      
      
    
    
}