import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // remove o banner de debug do app
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Transferências'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        // O widget Card é um container para outros conteúdos
        body: const Card(
          // ListTile: componente responsável por criar estruturas de listas.
          child: ListTile(
            // leading: conteúdo principal (pode ser qualquer widget)
            leading: Icon(Icons.monetization_on),
            title: Text('100.00'),
            subtitle: Text('1000'),
          ),
        ),
      ),
    ),
  );
}
