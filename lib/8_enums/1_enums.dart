void main() {
  var cor = 'vermelho';

  if (cor == Cores.vermelho) {}
  var azul = 'azul';
  print(Cores.azul.name);
  print(Cores.vermelho.name);
  print(Cores.laranja.name);

  var corAzul = Cores.values.byName(azul);
  print(corAzul);

  var coresMap = Cores.values.asMap();
  print(coresMap);
  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);
}

enum Cores { azul, vermelho, laranja, verde, preto }
