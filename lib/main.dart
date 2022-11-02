import 'package:clean_arq/core/inject/inject.dart';
import 'package:clean_arq/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  Inject.init();
  runApp(MaterialApp(
    home: CarroPage(),
  ));
}
