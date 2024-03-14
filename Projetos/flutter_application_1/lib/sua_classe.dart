class Login{
  String email;
  String senha;

  Login({required this.email, required this.senha}){
    if(email == 'Edu' && senha == '123'){
      print('Login efetuado com sucesso!');
    } else{
      print('Login ou senha inválidos!');
    }
  }
}