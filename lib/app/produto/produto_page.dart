import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoPage extends StatefulWidget {
  final String? textoProduto;
  ProdutoPage({Key? key})
      : textoProduto = Modular.args.data,
        super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(Modular.args.params['nome'] ??
                'Nenhum nome de produto enviado'),
          ],
        ),
      ),
    );
  }
}
