import 'package:comprasgui/domain/controller/gestionarticulo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListaArticulo extends StatefulWidget {
  const ListaArticulo({super.key});

  @override
  State<ListaArticulo> createState() => _ListaArticuloState();
}

class _ListaArticuloState extends State<ListaArticulo> {
  ComprasController controlc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PRODUCTOS"),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemCount: controlc.listaFinal.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.indigo,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 250,
                              height: 300,
                              child: Image.network(
                                  controlc.listaFinal[index].foto),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            "Codigo: ${controlc.listaFinal[index].codigo}",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Descripcion: ${controlc.listaFinal[index].detalle}",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            "la existencia es: ${controlc.listaFinal[index].existencia}",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            "el costo es: ${controlc.listaFinal[index].valorUnitario}",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })));
  }
}
