import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoriaPage extends StatefulWidget {
  final String? textoCategoria;

  CategoriaPage({Key? key})
      : textoCategoria = Modular.args.data,
        super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria Page'),
      ),
      body: Center(
        child:
            Text(widget.textoCategoria ?? 'Nenhum argumento stateful enviado'),
      ),
    );
  }
}

/*

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria Page'),
      ),
      body: Center(
        child: Text(Modular.args?.data ?? 'Nenhum argumento enviado'),
      ),
    );
  }
}
*/