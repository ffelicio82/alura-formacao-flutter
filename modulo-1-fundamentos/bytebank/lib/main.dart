import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Transferências'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: const ListaTransferencias(),
      ),
    ),
  );
}

/*
  * Existem 2 formas de criação de widgets
  * Classe extends Widget
  * - mais utilizada para construção de widgets de baixo nível.
  * Classe extends StatelessWidget/StatefulWidget
  * - utilizado para usar um código que já foi escrito.
  * - Essas classes também herdam de Widget, mas têm o comportamento de encapsular
  * códigos de Widgets já prontos.
  * A diferença entre elas é que StatefulWidget tem a capacidade de modificar o conteúdo
  * do widget de maneira dinâmica a partir de alguns eventos que acontecem no aplicativo,
  * enquanto o StatefulWidget não permite esse tipo de modificação.
 */
class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ItemTransferencia(
          transferencia: Transferencia(valor: 100, numeroConta: 1000),
        ),
        ItemTransferencia(
          transferencia: Transferencia(valor: 200, numeroConta: 2000),
        ),
        ItemTransferencia(
          transferencia: Transferencia(valor: 300, numeroConta: 3000),
        ),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  const ItemTransferencia({
    Key? key,
    required this.transferencia,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  const Transferencia({required this.valor, required this.numeroConta});
}
