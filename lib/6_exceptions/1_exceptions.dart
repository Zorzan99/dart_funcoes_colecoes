void main() {
  var idade = '24';
  String? nome;

  try {
    var idadeParse = int.parse(idade);
    nome!.toLowerCase();
    if (idadeParse == 24) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    print('$e $s');
    print('Erro ao converter idade');
  } on TypeError catch (e) {
    print('Erro ao converter idade');
  } catch (e) {
    print('Erro ao executar programa');
  } finally {
    print('finally');
  }
}
