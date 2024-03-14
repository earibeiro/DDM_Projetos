Aula 29/02

Atividade 01
a) Solicite 2 notas de avaliações e calcule a média; 
  main(){
  print('Atividade 01');
  print('Informe a primeira nota: ');
  var entradaNota1 = stdin.readLineSync()!;
  var nota1 = int.parse(entradaNota1);
  print('Informe a segunda nota: ');
  var entradaNota2 = stdin.readLineSync()!;
  var nota2 = int.parse(entradaNota2);

  var media = ((nota1 + nota2)/2);

  print('A média das notas $nota1 e $nota2 é de: $media');
  }

b) Refaça o exercício anterior validado se as notas informadas são válidas (de 0 à 10);
main(){
  print('Atividade 01');
  print('Informe a primeira nota: ');
  var entradaNota1 = stdin.readLineSync()!;
  var nota1 = int.parse(entradaNota1);

  if(nota1>=0 && nota1<=10){
    print('Nota válida!');
  }else{
    print('Nota inválida!');
  }

  print('Informe a segunda nota: ');
  var entradaNota2 = stdin.readLineSync()!;
  var nota2 = int.parse(entradaNota2);

  if(nota2>=0 && nota2<=10){
    print('Nota válida!');
  }else{
    print('Nota inválida!');
  }

  var media = ((nota1 + nota2)/2);

  print('A média das notas $nota1 e $nota2 é de: $media');
}

c) Com a média calculada, verifique se o aluno está aprovado (maior ou igual à 6).
main(){
  print('Atividade 01');
  print('Informe a primeira nota: ');
  var entradaNota1 = stdin.readLineSync()!;
  var nota1 = int.parse(entradaNota1);

  if(nota1>=0 && nota1<=10){
    print('Nota válida!');
  }else{
    print('Nota inválida!');
  }

  print('Informe a segunda nota: ');
  var entradaNota2 = stdin.readLineSync()!;
  var nota2 = int.parse(entradaNota2);

  if(nota2>=0 && nota2<=10){
    print('Nota válida!');
  }else{
    print('Nota inválida!');
  }

  var media = ((nota1 + nota2)/2);

  if(media >= 6){
    print('Aluno(a) está aprovado(a) com média $media');
  }else{
    print('Aluno(a) não foi aprovado(a), media final: $media');
  }
}

d) Faça 3 exemplos do seu projeto.
main(){
  print('Atividade 01');
  print('Informe o nome do seu pet: ');
  var nomeAnimal = stdin.readLineSync();
  print('Informe 1 se o sexo do animal for femea e 2 se for macho: ');
  var entradaSexoAnimal = stdin.readLineSync()!;
  var sexoAnimal = int.parse(entradaSexoAnimal);
  print('Informe o nome do tutor(a): ');
  var nomeTutor = stdin.readLineSync();
  print('Informe 1 se o sexo do(a) tutor(a) for feminino e 2 se for masculino: ');
  var entradaSexoTutor = stdin.readLineSync()!;
  var sexoTutor = int.parse(entradaSexoTutor);
  print('Informe a idade do seu pet: ');
  var entradaIdadeAnimal = stdin.readLineSync()!;
  var idadeAnimal = int.parse(entradaIdadeAnimal);

  if(sexoTutor == 1 && sexoAnimal == 1){
    print('$nomeTutor e $nomeAnimal, Sejam muito bem vindas ao PawFriend!');
  }else{
    print('$nomeTutor e $nomeAnimal, Sejam muito bem vindos ao PawFriend!');
  }
}
__________________________________________________________________________________________________________________________________________________________________________________-
FUNÇÕES
main(){
  print('Diferentes tipos de funções');

}

void nomeFuncao(){//funcao que nao tem retorno e nem parametros
}

int nomeFuncao2(){//funcao com retorno e sem paremetros
  return 0;
}

void nomeFuncao3(int x, String y){//funcao sem retorno e com parametros
}

int nomeFuncao4(int x, String y){//funcao com retorno e com parametros
  return 1;
}
/*! garante, se for NULO acontece erro de execução (BANG)
? aceita nulo, se for nulo não executa a linha (NAVEGAÇÃO SEGURA)
?? colocar valor padrão (DEFAULT)

Toda execução é formada por: entrada, processamento e saída;
Logo, uma função que não retorno e nem paramentros são usadas para coisas dentro do projeto, por exemplo verificar se o banco de dados está online.


Separar regra de negocio de tecnologia;
*/
______________________________________________________________________________________________________________________________________________________________________________________________________
//Reescrever o código, separando regra de negócio de tecnologia:

main(){
  print('Informe a primeira nota: ');
  var entradaNota1 = stdin.readLineSync()!;
  var nota1 = int.parse(entradaNota1);

  if(validacao(nota1) == true){
    print('Nota válida!');
  }else{
    print('Nota inválida!');
  }

  print('Informe a segunda nota: ');
  var entradaNota2 = stdin.readLineSync()!;
  var nota2 = int.parse(entradaNota2);

  if(validacao(nota2) == true){
    print('Nota válida!');
  }else{
    print('Nota inválida!');
  }

  var media = calcularMedia(nota1, nota2);

  if(aprovacaoAluno(media) == true){
    print('Aluno(a) está aprovado(a) com média $media');
  }else{
    print('Aluno(a) não foi aprovado(a), media final: $media');
  }
}

bool validacao(int nota){
    if(nota>=0 && nota<=10){
      return true;
    }else{
      return false;
    }
}

double calcularMedia(int nota1, int nota2){
  var media = ((nota1 + nota2)/2);
  return media;
}

bool aprovacaoAluno(double media){
    if(media >= 6){
      return true;
    }else{
      return false;
    }
}
//Autoavaliação: P (pleno)
//Dificuldade(s): Uso do NULL SAFETY, entendi o conceito, porém falta praticar mais para cementar esse conhecimento.
//E ajudar mais os colegas de equipe.