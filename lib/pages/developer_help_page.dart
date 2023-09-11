import 'package:flutter/material.dart';

class DeveloperHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajuda ao Desenvolvedor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/pix.jpg'), // Substitua pelo caminho da sua imagem
            SizedBox(height: 16), // Espaçamento entre a imagem e o texto
            Text(
              'DOE POR PIX',
              style: TextStyle(
                fontSize: 24, // Tamanho da fonte
                fontWeight: FontWeight.bold, // Negrito
              ),
            ),
          ],
        ),
      ),
    );
  }
}
