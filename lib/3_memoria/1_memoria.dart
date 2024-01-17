void main() {
  var lista = ['Gabriel'];
  print(lista);
  funcao(lista);
  print(lista);
  var nome = "Gabriel zorzan";
  print(nome);
  print(nome.hashCode);
  funcao2(nome);
  print(nome);
  print(nome.hashCode);

  var list = ['Gabriel'];
  print(list);
  add(list);
  print(list);
}

void funcao(List<String> nomes) {
  nomes.add("Zorzan");
}

void funcao2(String nome) {
  nome += " Dos santos";
  print(nome);
  print(nome.hashCode);
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add("Gabriel Zorzan");
  return novoNomes;
}
