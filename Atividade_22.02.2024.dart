//Autoavaliação: PLENO (P);

//Atividade 01
/*void main(){
  /* a) Defina as seguintes variáveis e seus respectivos valores:
disciplina, carga horária com casas decimais, professor responsável,
se a disciplina está ativa e quantidade de alunos.
*/
  String disciplina;
  double cargaHoraria;
  String profResponsavel;
  bool estaAtiva;
  int qtdAlunos;

  disciplina = 'ingles';
  cargaHoraria = 40.5;
  profResponsavel = 'Eduardo';
  estaAtiva = true;
  qtdAlunos = 25;


/*
b) imprima todos os valores utilizando: i) concatenação,
ii) interpolação simples e iii) interpolação com processamento
*/
  //Imprimir valores utilizando: concatenação
  print('Disciplina: ' + disciplina + ' ' + 'Professor responsável: ' +profResponsavel);

  //Imprimir valores utilizando: interpolação simples
  print('${disciplina} ${cargaHoraria} ${profResponsavel} ${estaAtiva} ${qtdAlunos}');

  //Imprimir valores utilizando: Interpolação em processamento
  print('Disciplina: ' + '$disciplina \n $cargaHoraria $profResponsavel ${estaAtiva == true ? 'Turma está ativa' : 'Turma inativa'} $qtdAlunos'); 
} */

//Atividade 02
/* Aplique o que aprendeu em seu projeto.
void main() {
  String disciplina;
  String materia;
  Duration duracaoAula;

  disciplina = 'Calculo';
  materia = 'Integral';
  duracaoAula = Duration(hours:0, minutes:25, seconds:0);

  print('$disciplina $materia $duracaoAula');
}
*/

//Atividade 03
//a) Refaça a "atividade 01" utilizando Inferência de TIPO.
/*
void main() {
  var disciplina = 'ingles';
  double cargaHoraria;
  var profResponsavel;
  bool estaAtiva;
  int qtdAlunos;

  cargaHoraria = 40.5;
  profResponsavel = 'Eduardo';
  estaAtiva = true;
  qtdAlunos = 25;

  print('Disciplina: ' + '$disciplina $cargaHoraria $profResponsavel ${estaAtiva == true ? 'Turma está ativa' : 'Turma inativa'} $qtdAlunos'); 

}
*/

//Atividade 04
// Aplique o que aprendeu em seu projeto
/*
void main() {
  dynamic disciplina;
  dynamic materia;
  Duration duracaoAula;

  disciplina = 'Calculo';
  materia = 'Integral';
  duracaoAula = Duration(hours:0, minutes:25, seconds:0);

  print('$disciplina $materia $duracaoAula');
}
*/



