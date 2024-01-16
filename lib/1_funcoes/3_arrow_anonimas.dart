void main() {
  //Funcoes arrow - OK
  print(somaInteiros(10, 10));

  //Funcoes Anonimas
  () {
    print('Funcao anonima');
  }();
  // Não esta invocando a função
  somaInteiros;

  var nome = '';
  var idade = 1;
  funcaoQualquer() {
    print('Chamou a funcao da variavel');
  }

  print(nome.runtimeType);
  print(idade.runtimeType);
  print(funcaoQualquer.runtimeType);
  print(funcaoQualquer());
}

//Funções tem 3 partes
// 1 Tipo de retorno
// 2 Nome
// 3 Parametros (normais, nomeados e opcionais)

//Função arrow quando utilizamos funções simples em uma linha só
int somaInteiros(int a, int b) => a + b;
