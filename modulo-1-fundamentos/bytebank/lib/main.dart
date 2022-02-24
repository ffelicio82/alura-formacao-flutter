import 'package:flutter/material.dart';

void main() {
  // A função runApp é o ponto de partida do app
  // Na função runApp só pode incluir um widget
  // O que estiver dentro dessa função será a base do app
  runApp(
    // o widget Column nos permite aninhar vários componentes de widgets.
    // Ele recebe uma lista de widgets e seu direcionamento se dá pela horizontal
    Column(
      children: <Widget>[
        const Text(
          'Deliver features faster',
          // como o widget text não possui uma direção específica, foi incluído o atributo textDirection.
          // sem ele é apresentado um erro no app
          textDirection: TextDirection.ltr,
        ),
        const Text(
          'Craft beautiful UIs',
          textDirection: TextDirection.ltr,
        ),
        const Text(
          'Craft beautiful UIs',
          textDirection: TextDirection.ltr,
        ),
        Column(
          children: const <Widget>[
            Text(
              'Craft beautiful UIs',
              textDirection: TextDirection.ltr,
            ),
            Text(
              'Deliver features faster',
              // como o widget text não possui uma direção específica, foi incluído o atributo textDirection.
              // sem ele é apresentado um erro no app
              textDirection: TextDirection.ltr,
            ),
          ],
        ),
      ], //<Widget>[]
    ),
  );
}
