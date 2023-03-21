import 'dart:convert';

import 'package:flutter/foundation.dart';

class Articulo {
  late String detalle;
  late String codigo;
  late int existencia;
  late double valorUnitario;
  late String foto;

  Articulo({
    required this.codigo,
    required this.detalle,
    required this.existencia,
    required this.valorUnitario,
    required this.foto,
  });

  factory Articulo.crear(Map<String, dynamic> jsonMap) {
    return Articulo(
        codigo: jsonMap['codigo'],
        detalle: jsonMap['detalle'],
        existencia: jsonMap['existencia'],
        valorUnitario: jsonMap['valorUnitario'],
        foto: jsonMap['foto']);
  }
}

Map<String, dynamic> art = {
  "codigo": "MOTOROLAPLU",
  "detalle": "MOTOROLA Moto G22 128 GB Blanco",
  "foto":
      "https://exitocol.vtexassets.com/arquivos/ids/16830793-1600-auto?v=638139875790970000&width=1600&height=auto&aspect=true",
  "existencia": 20,
  "valorUnitario": 599000.0
};

Map<String, dynamic> art1 = {
  "codigo": "Chevrolet",
  "detalle": "Chevrolet Traverse 3.6 High Country",
  "foto":
      "https://http2.mlstatic.com/D_NQ_NP_857138-MCO54467440374_032023-O.webp",
  "existencia": 1,
  "valorUnitario": 1749000.0
};

Map<String, dynamic> art2 = {
  "codigo": "TVS",
  "detalle": "Tvs Apache Rr 310",
  "foto":
      "https://http2.mlstatic.com/D_NQ_NP_851060-MCO52698683357_122022-O.webp",
  "existencia": 1,
  "valorUnitario": 16800000.0
};

Map<String, dynamic> art3 = {
  "codigo": " Mountain bike",
  "detalle": "Bicicicleta Roadmaster Hurricane 29 Shimano Revoshift 21vel",
  "foto":
      "https://http2.mlstatic.com/D_NQ_NP_708992-MCO32075863911_092019-O.webp",
  "existencia": 670,
  "valorUnitario": 674900.0
};

List<Articulo> listaoriginal = [
  Articulo.crear(art),
  Articulo.crear(art1),
  Articulo.crear(art2),
  Articulo.crear(art3),
];
