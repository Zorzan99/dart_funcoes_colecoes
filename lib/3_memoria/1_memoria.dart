void main() {
  // Cria uma lista chamada 'lista' com um elemento 'Gabriel'
  var lista = ['Gabriel'];

  // Imprime a lista ['Gabriel']
  print(lista);

  // Chama a função 'funcao' e passa a lista como parâmetro
  funcao(lista);

  // Imprime a lista ['Gabriel', 'Zorzan'] após a chamada da função
  print(lista);

  // Cria uma string chamada 'nome' com o valor "Gabriel Zorzan"
  var nome = "Gabriel Zorzan";

  // Imprime a string 'nome'
  print(nome);

  // Imprime o código hash da string 'nome'
  print(nome.hashCode);

  // Chama a função 'funcao2' e passa a string 'nome' como parâmetro
  funcao2(nome);

  // Imprime novamente a string 'nome', que não foi alterada pela função 'funcao2'
  print(nome);

  // Imprime novamente o código hash da string 'nome', que permanece o mesmo
  print(nome.hashCode);

  // Cria uma lista chamada 'list' com um elemento 'Gabriel'
  var list = ['Gabriel'];

  // Imprime a lista ['Gabriel']
  print(list);

  // Chama a função 'add' e passa a lista como parâmetro
  add(list);

  // Imprime novamente a lista ['Gabriel'], pois a função 'add' retorna uma nova lista
  print(list);
}

// Função 'funcao' que adiciona o elemento "Zorzan" à lista de strings
void funcao(List<String> nomes) {
  nomes.add("Zorzan");
}

// Função 'funcao2' que concatena a string 'nome' com " Dos santos" (não altera a string original)
void funcao2(String nome) {
  nome += " Dos santos";

  // Imprime a string 'nome' após a concatenação
  print(nome);

  // Imprime o código hash da string 'nome' após a concatenação
  print(nome.hashCode);
}

// Função 'add' que cria uma nova lista, copia os elementos da lista original e adiciona um novo elemento
List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add("Gabriel Zorzan");
  print(novoNomes);
  return novoNomes;
  //A razão pela qual a lista 'list' não foi alterada após a chamada da função 'add' está relacionada à forma como o Dart lida com parâmetros e valores.
  //Quando você passa uma lista para uma função em Dart, você está, na verdade, passando uma referência à lista, não uma cópia dos seus elementos.
  // Isso significa que a função pode modificar os elementos da lista original, mas não pode substituir a lista por uma completamente nova.
  //Dentro da função 'add', é criada uma nova lista chamada 'novoNomes' que contém todos os elementos da lista original 'nomes' usando o operador spread (...).
  // Em seguida, é adicionado um novo elemento a 'novoNomes' e a lista modificada é retornada.
  //No entanto, observe que a função retorna a nova lista (novoNomes), mas a lista original (nomes) permanece inalterada.
  // A função não pode modificar diretamente o objeto referenciado pelo parâmetro nomes.
  // Portanto, quando você imprime a lista 'list' após a chamada da função 'add', você ainda vê a lista original, porque a função não a alterou.
}


// Uma lista chamada 'lista' é criada com um elemento "Gabriel".
// A função 'funcao' é chamada, adicionando "Zorzan" à lista 'lista'.
// Imprime a lista 'lista' após a chamada da função 'funcao'.
// Uma string chamada 'nome' é criada com o valor "Gabriel Zorzan".
// Imprime a string 'nome' e seu código hash.
// A função 'funcao2' é chamada, concatenando " Dos santos" à string 'nome'.
// Imprime a string 'nome' após a chamada da função 'funcao2'.
// Imprime o código hash da string 'nome' após a chamada da função 'funcao2'.
// Uma lista chamada 'list' é criada com um elemento "Gabriel".
// A função 'add' é chamada, retornando uma nova lista com um novo elemento "Gabriel Zorzan".
// Imprime novamente a lista 'list', que não foi alterada pela função 'add'.

