import 'package:flutter/material.dart';

// ignore: camel_case_types
class pixPage extends StatelessWidget {
  const pixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pixScreen(),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class pixScreen extends StatelessWidget {
  pixScreen({super.key});
  // Variável que alimenta o valor do CRC
  int crcValue = 1440;

  // Controlador para o input do CRC personalizado
  final TextEditingController crcController = TextEditingController();

  // Função para adicionar ação ao botão "Enviar"
  void enviarAcao() {
    // Adicione a ação que deseja executar aqui
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text("YourTime"),
        ),
      ),
      body: Container(
        color: Colors.transparent, // Remove a cor de fundo
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "CRC",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                crcValue.toString(), // Valor do CRC
                style: const TextStyle(fontSize: 36),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                color: Colors.orangeAccent,
                width: 500,
                alignment: Alignment.center, // Alinha o contender ao centro
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CRC",
                      style: TextStyle(fontSize: 24),
                    ),
                    TextField(
                      controller: crcController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Digite um valor",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey, // Cor de fundo cinza
        child: ElevatedButton(
          onPressed: enviarAcao, // Chama a função enviarAcao quando o botão é pressionado
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, // Define a cor laranja para o botão
          ),
          child: const Text("Enviar"),
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   crcController.dispose(); // Libera o controlador do TextField ao sair da tela
  //   super.dispose();
  // }
}