import 'dart:io';

class Login{
  String email;
  String senha;
 

  Login({required this.email, required this.senha}){
    while (this.email == null 
        || this.email == '' 
        || this.senha == null 
        || this.senha == ''){
      if (this.email == null || this.email == ''){ 

        print('Informe o email: ');
        this.email = stdin.readLineSync()!;
      } else if (this.senha == null || this.senha == ''){
        print('Informe a senha: ');
        this.senha = stdin.readLineSync()!;
      }
    }
    if(email == 'Edu' && senha == '123'){
      print('Login efetuado com sucesso!');

    } else{
      print('Login ou senha inválidos!');
    }
  }
}

/*

>> Todos com parâmetros nomeados no construtor
  Estado{id,nome,sigla}
  Cidade{id,nome,Estado}
  Cliente{id,nome,Cidade -trabalho, Cidade -moradia}
  Fornecedor{id,nome,Cidade -trabalho, Cidade -moradia}
  Venda{id, Cliente, Fornecedor, Função - cálculo comissão}

*/

class Estado {

  int id;
  String nome;
  String sigla;

  Estado({required this.id, required this.nome,required this.sigla}){
    print('Estado: $nome, Sigla: $sigla');
  }
}

class Cidade{
  int id;
  String nome;
  Estado estado;

  Cidade({required this.id, required this.nome, required this.estado}){
    print('Cidade: $nome, Estado: ${estado.nome}');
  }
}

class Cliente{
  int id;
  String nome;
  Cidade cidadeTrabalho;
  Cidade cidadeMoradia;

  Cliente({required this.id, required this.nome, required this.cidadeTrabalho, required this.cidadeMoradia}){
    print('Cliente: $nome, Cidade Trabalho: ${cidadeTrabalho.nome}, Cidade Moradia: ${cidadeMoradia.nome}');
  }
}


class Fornecedor{
  int id;
  String nome;
  Cidade cidadeTrabalho;
  Cidade cidadeMoradia;

  Fornecedor({required this.id, required this.nome, required this.cidadeTrabalho, required this.cidadeMoradia}){
    print('Fornecedor: $nome, Cidade Trabalho: ${cidadeTrabalho.nome}, Cidade Moradia: ${cidadeMoradia.nome}');
  }
}

class Venda{
  int id;
  Cliente cliente;
  Fornecedor fornecedor;
  double Function(double) calcularComissao;

  Venda({required this.id, required this.cliente, required this.fornecedor, required this.calcularComissao}){
    print('Venda: $id, Cliente: ${cliente.nome}, Fornecedor: ${fornecedor.nome}');
  }
}
