void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);

  print('toSet()');
  print(numerosLista.toSet());

  // ignore: avoid_function_literals_in_foreach_calls
  numerosSet.forEach((numeroSet) {
    print('Print do numeroSet $numeroSet');
  });

  numerosSet.forEach(print);

  print('.difference()');
  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  print('.union()');
  print(numeros1.union(numeros2));
  print(numeros1.intersection(numeros2));

  var nomes1 = {'Joao', 'Gabriel', 'Zorzan'};
  var nomes2 = {'Joao', 'Pedro', 'Santos'};
  print(nomes1.intersection(nomes2));

  print('.lookup()');
  print(numeros1.lookup(1));
}


// Em Dart, um Set é uma coleção de objetos onde cada objeto pode aparecer no máximo uma vez.
// Isso significa que um Set não permite elementos duplicados. 
// A ordem dos elementos em um conjunto pode não ser previsível ou pode depender da implementação específica do Dart.
// Para criar um conjunto em Dart, você pode usar a sintaxe de chaves {} ou a classe Set.

// Já o termo "iterable" se refere a uma coleção de elementos que pode ser percorrida (iterada) sequencialmente.
// Em Dart, muitos tipos de coleções são iteráveis, incluindo listas, conjuntos e mapas.
// A classe Iterable é a interface implementada por essas coleções e fornece métodos para percorrer os elementos.
// Por exemplo, ao usar o método forEach, você pode iterar sobre os elementos de um iterable.