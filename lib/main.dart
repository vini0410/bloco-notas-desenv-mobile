import 'package:bloco_notas_n3/inherited_widgets/anotacao_inherited_widgets.dart';
import 'package:bloco_notas_n3/views/anotacoes_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnotacaoInheritedWidget(MaterialApp(
        title: 'Anota!',
        home: AnotacoesList(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        )));
  }
}
