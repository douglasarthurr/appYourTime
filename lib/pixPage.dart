import 'package:flutter/material.dart';

class PixPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fazer Pix'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/pix_symbol.png'), // Adicione a imagem do símbolo do Pix
            Text('Fazer Pix'),
          ],
        ),
      ),
    );
  }
}