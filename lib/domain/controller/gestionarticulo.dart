import 'package:comprasgui/models/articulo.dart';
import 'package:comprasgui/ui/pages/carrito/add.dart';
import 'package:get/get.dart';

//recursos que se van hacer el llamado en app.dart
class ComprasController extends GetxController {
  Rx<List<Articulo>> listaGart = Rx<List<Articulo>>(
      []); //obs o RX nos indica que puede ser vista en cualquier lugar la info de contador en este caso es el articulo
  @override
  void onInit() {
    listaGart.value = listaoriginal;
    super.onInit();
  }

  List<Articulo> get listaFinal => listaGart.value;

  AddArticulo(Articulo art) {}
}
