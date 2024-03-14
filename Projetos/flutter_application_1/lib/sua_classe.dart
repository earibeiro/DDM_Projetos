import 'dart:io';

class Login{
  String email;
  String senha;

  Login({required this.email, required this.senha}){
    while (this.email == null || this.email == '' || this.senha == null || this.senha == ''){
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