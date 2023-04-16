import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed(
                  '/categoria/',
                  arguments: 'Argumento stateful enviado pela splash',
                );
              },
              child: const Text('Categoria Module'),
            ),
            TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed(
                  '/produto/teste',
                  arguments: 'Produto enviado pela splash',
                );
              },
              child: const Text('Produto Module'),
            ),
          ],
        ),
      ),
    );
  }
}
