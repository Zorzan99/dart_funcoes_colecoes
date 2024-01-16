void main() {
//Parametros obrigatorios por default
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');

//Parametros nomeados
//Parametros nomeados sao nullables  por default
// Parametros nomeados podem ser promovidos por non null com checagem de null

  print('A soma de 10.2 + 10.2 é ${somaDoubles(a: 10.2, b: 10.2)}');
  print(
      'A soma de 10.2 + 10.2 obrigatorio é ${somaDoublesObrigatorios(a: 10.2, b: 10.2)}');
}

int somaInteiros(int a, int b) {
  return a + b;
}

double somaDoubles({double? a, double? b}) {
  if (a != null && b != null) {
    return a + b;
  }
  return 0.0;
}

double somaDoublesObrigatorios({required double a, required double b}) {
  return a + b;
}
