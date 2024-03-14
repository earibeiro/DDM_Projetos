class MinhaClasse{
  int x=0;
  int y=0;
  //MinhaClasse(); // Construtor sem corpo.

  /*MinhaClasse(int x){ // Parâmetro posicional.
    print('X: $x');
  }*/

  /*MinhaClasse(int x, [int y = 5]){ // Parâmetro posicional com valor padrão e opcional.
    print('X: $x, Y: $y');
  } */

  /*
  MinhaClasse(int x, int y){
    print('X é $x o atributo x é ${this.x}');
    this.x = x;
    this.y = y;
    print('X é ${this.x} e y = ${this.y}');
  }
  */

  /*
  MinhaClasse(this.x, this.y){ // Parâmetro posicional com referência.
    print('Atributo X é ${this.x} e Y = ${this.y}');
  }
  */

  MinhaClasse({required this.x,required this.y}){ // Parâmetro posicional com referência.
    print('Atributo X é ${this.x} e Y = ${this.y}');
  }
}