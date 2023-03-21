import 'package:comprasgui/domain/controller/gestionarticulo.dart';
import 'package:comprasgui/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ComprasController()); //conexion del get
  runApp(const App());
}
