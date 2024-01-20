void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  print('1 - Remova os pacientes duplicados e apresente a nova lista');
  final pessoasDuplicadas = pessoas.toSet().map((e) => e.split("|")).toList();
  for (var p in pessoasDuplicadas) {
    print(p[0]);
  }
  print('');
  final mapSexo = <String, List<String>>{};
  for (var pessoa in pessoasDuplicadas) {
    final sexo = pessoa[2].toLowerCase();
    final listaMasculino = mapSexo['M'] ?? <String>[];
    final listaFeminino = mapSexo['F'] ?? <String>[];

    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    }
    if (sexo == 'feminino') {
      listaFeminino.add(pessoa[0]);
    }
    mapSexo['M'] = listaMasculino;
    mapSexo['F'] = listaFeminino;
  }
  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  final m = mapSexo['M'] ?? <String>[];
  final f = mapSexo['F'] ?? <String>[];
  print('Masculinos: ${m.length} ');
  m.forEach(print);
  print('');
  f.forEach(print);
  print('Femininos: ${f.length}');

  final pessoasMaiores18 = pessoasDuplicadas.where((p) {
    final idade = int.tryParse(p[1]) ?? 0;
    return idade > 18;
  }).toList();
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  for (var p in pessoasMaiores18) {
    print(p[0]);
  }

  final pessoasOrdenadas = [...pessoasDuplicadas];
  pessoasOrdenadas.sort((p1, p2) {
    final idadeP1 = int.tryParse(p1[1]) ?? 00;
    final idadeP2 = int.tryParse(p2[1]) ?? 00;

    return idadeP2.compareTo(idadeP1);
  });
  final pessoaMaisVelha = pessoasOrdenadas.first;
  final pessoaMaisNova = pessoasOrdenadas.last;
  print(
      "A pessoa mais velha é ${pessoaMaisVelha[0]} e tem ${pessoaMaisVelha[1]} anos");
  print(
      "A pessoa mais nova é ${pessoaMaisNova[0]} e tem ${pessoaMaisNova[1]} anos");
}
