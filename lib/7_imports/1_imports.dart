import 'somas/soma.dart' as soma;
import 'somas_nova/soma.dart' as nova_soma;

void main() {
  var resultInt = soma.somaInteiros(10, 20);
  print("Total de int: $resultInt");
  var resultDouble = nova_soma.somaDoubles(10.1, 5.1);
  print("Total de double: $resultDouble");
}
