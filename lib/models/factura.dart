import 'package:comprasgui/models/articulo.dart';
import 'package:comprasgui/models/cliente.dart';

class Factura {
  late String numero;
  late DateTime fecha;
  late List<Articulo> listaArt;
  late Cliente cliente;
}
