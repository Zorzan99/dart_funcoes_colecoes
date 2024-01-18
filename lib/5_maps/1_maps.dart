void main() {
  // O Mapa é uma representação de Chave:Valor
  final paciente = <String, String>{
    'nome': 'Gabriel Zorzan',
    'curso': 'Flutter',
  };

//O mapa pode ser nulo mas se for criado deve conter a chave e o valor NÃO nulos
  Map<String, String>? pacienteNullSafety;

//O mapa e o valor NÃO podem ser nulos mas a chave pode ser nula
  var pacienteNullSafety2 = <String?, String>{
    null: 'Gabriel',
  };

//O mapa e a chave NÃO podem ser nulos mas o valor pode ser nulo
  var pacienteNullSafety3 = <String, String?>{
    'Gabriel': null,
  };

  var produtos = <String, String>{};
  // Só será adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Produto');
  produtos.putIfAbsent('nome', () => 'Refrigerante');
  print(produtos);

  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);
  produtos.update('preço', (value) => '10', ifAbsent: () => '10');
  print(produtos);

  //Recuperando valor
  print('Produto ${produtos['nome']}');
  print('Preço ${produtos['preço']}');
  produtos.forEach((key, value) {
    print('Chave $key : $value');
  });

//Utilizar quando for fazer algum processo asyncrono dentro dele.
  for (var entry in produtos.entries) {
    print("Chave : ${entry.key} : ${entry.value}");
  }

  for (var key in produtos.keys) {
    print('Chave : $key');
  }
  for (var value in produtos.values) {
    print('Valor : $value');
  }
  var novoMapProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });
  print(novoMapProdutos);

  var mapa = <String, dynamic>{
    'nome': 'Gabriel Zorzan',
    'cursos': [
      {
        'Nome': 'Flutter',
        'Descricao': 'Aprenda flutter',
      },
      {
        'Nome': 'Dev Flutter',
        'Descricao': 'Aprenda flutter',
      },
    ],
  };
  print(mapa);
}
