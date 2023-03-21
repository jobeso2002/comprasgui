import 'package:comprasgui/ui/auth/login.dart';
import 'package:comprasgui/ui/pages/carrito/add.dart';
import 'package:comprasgui/ui/pages/carrito/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gestion de datos',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const ListaArticulo(),
      routes: {
        "/auth": (context) => const Login(),
        "/listaArt": (context) => const ListaArticulo(),
        "/add": (context) => const AddArticulo()
      },
    );
  }
}
