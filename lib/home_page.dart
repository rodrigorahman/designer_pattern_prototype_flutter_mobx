import 'package:designer_pattern_prototype_flutter_mobx/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeStore store = HomeStore();

  @override
  void initState() {
    super.initState();
    store.loadCliente();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => store.fazerAniversario(),
        label: Text('Fazer aniversário'),
      ),
      body: Center(
        child: Observer(
          builder: (_) {
            return Column(
              children: <Widget>[
                Text(store.cliente.nome),
                Text(store.cliente.telefone),
                Text(store.cliente.idade.toString()),
              ],
            );
          },
        ),
      ),
    );
  }
}
