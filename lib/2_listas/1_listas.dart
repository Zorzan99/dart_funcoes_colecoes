void main() {
  // 1. Geração de Lista e Impressão:
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(
      printGit); // Gera lista de números de 0 a 9 e imprime cada número.

  // 2. Matriz (Lista) Bidimensional e Expansão:
  var lista = [
    [1, 2],
    [3, 4],
  ];
  print(lista[0]
      [0]); // Acessa e imprime o primeiro elemento da lista bidimensional.

  // Utiliza expand para transformar a lista bidimensional em uma unidimensional e imprime.
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // 3. Métodos .any e .every:
  print('.any');
  final listaBuscar = ['Gabriel', 'Zorzan', 'João'];

  // Verifica se 'Gabriel' está presente na lista usando .any.
  if (listaBuscar.any((nome) => nome == 'Gabriel')) {
    print('Tem Gabriel');
  } else {
    print('Não tem Gabriel');
  }

  // Verifica se todos os nomes na lista contêm a letra 'G' usando .every.
  final listaBuscar2 = ['Gabriel', 'Zorzan', 'João'];
  if (listaBuscar2.every((nome) => nome.contains('G'))) {
    print('Todos os nomes têm a letra G');
  } else {
    print('Nem todos os nomes têm a letra G');
  }

  // 4. Método .sort:
  print('.sort');
  var listaOrdenada = [10, 5, 11, 5, 2, 7, 1];
  listaOrdenada.sort(); // Ordena a lista de números.
  print(listaOrdenada);

  var listaOrdenadaComString = ['Gabriel', ' Joao', 'Zorzan', 'Pedro'];
  listaOrdenadaComString.sort(); // Ordena a lista de strings.
  print(listaOrdenadaComString);

  // Ordena a lista de pacientes com base na idade usando uma função de comparação.
  var listaPaciente = [
    "Gabriel Zorzan|24",
    "Joao Zorzan|26",
    "Teste Pedro|25",
  ];
  listaPaciente.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    // Compara as idades e retorna 1 se idade1 > idade2, 0 se são iguais, e -1 se idade1 < idade2.
    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });

  //A função de comparação deve retornar um valor inteiro, e o método .sort usa esse valor para decidir a ordem dos elementos. O retorno segue a seguinte lógica:

// Se idadePaciente1 for maior que idadePaciente2, a função retorna 1.
// Se idadePaciente1 for igual a idadePaciente2, a função retorna 0.
// Se idadePaciente1 for menor que idadePaciente2, a função retorna -1.
// Esses valores indicam ao método .sort como deve ser feita a ordenação.
// Se o retorno for 1, significa que idadePaciente1 deve vir depois de idadePaciente2 na lista.
// Se for -1, significa que idadePaciente1 deve vir antes de idadePaciente2
//. Se for 0, significa que as idades são iguais e a ordem entre esses dois elementos não importa.
  print(listaPaciente);

  // 5. Método .sort com compareTo:
  print('.sort com CompareTo');
  var listaPaciente2 = [
    "Gabriel Zorzan|24",
    "Joao Zorzan|26",
    "Teste Pedro|25",
  ];
  listaPaciente2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    // Usa compareTo para comparar as idades e retorna o resultado.
    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPaciente2);
}

// Função Auxiliar para Imprimir Valores:
void printGit(Object valor) {
  print(valor);
}


// Explicações Detalhadas:

// Geração de Lista e Impressão:

// Gera uma lista chamada numeros contendo números de 0 a 9 usando List.generate.
// Itera sobre a lista numeros usando forEach e imprime cada elemento usando a função printGit.
// Matriz (Lista) Bidimensional e Expansão:

// Declara uma lista bidimensional chamada lista.
// Acessa e imprime um elemento específico da lista bidimensional.
// Usa o método expand para transformar a lista bidimensional em uma lista unidimensional chamada listaNova e imprime.
// Métodos .any e .every:

// Declara uma lista chamada listaBuscar e verifica se 'Gabriel' está presente usando any.
// Verifica se todos os nomes na lista listaBuscar2 contêm a letra 'G' usando every.
// Método .sort:

// Ordena a lista listaOrdenada e imprime o resultado.
// Ordena a lista de strings listaOrdenadaComString e imprime o resultado.
// Ordena a lista de pacientes listaPaciente com base na idade usando uma função de comparação e imprime o resultado.
// Método .sort com compareTo:

// Ordena a lista de pacientes listaPaciente2 usando compareTo para comparar as idades e imprime o resultado.
// Função Auxiliar printGit:

// Define uma função printGit que imprime um valor.