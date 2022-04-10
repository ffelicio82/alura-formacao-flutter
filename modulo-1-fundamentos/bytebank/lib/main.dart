import 'package:flutter/material.dart';

void main() {
  runApp(
    /*
     * Esse widget envolverá todos os outros componentes que adicionarmos, e é
     * responsável pelos comportamentos esperados por padrão nessa implementação,
     * seja na parte de navegação, transição e assim por diante.
     */
    MaterialApp(
      // home: indica o widget que irá representar a primeira tela
      // Scaffold: permite implementar toda a estrutura básica (ou esqueleto) do Material Design
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Transferências'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, // obrigado a passar
          // permite definir o conteúdo do FloatingActionButton
          child: const Icon(Icons.add),
        ),
      ),
    ),
  );
}
