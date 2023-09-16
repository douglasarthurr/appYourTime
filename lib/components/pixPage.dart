import 'package:flutter/material.dart';

// ignore: camel_case_types
class pixPage extends StatelessWidget {
  const pixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PixScreen(),
    );
  }
}

class PixScreen extends StatefulWidget {
  const PixScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PixScreenState createState() => _PixScreenState();
}

class _PixScreenState extends State<PixScreen> {
  String saldo = "00,00";
  TextEditingController valorController = TextEditingController();

  void confirmarPix() {
    String valorDigitado = valorController.text;
    // Aqui você pode adicionar a lógica para processar o Pix com o valorDigitado
    // Por enquanto, apenas atualizaremos o saldo com o valor digitado
    setState(() {
      saldo = valorDigitado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Seu saldo: $saldo",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300.0,
              child: TextField(
                controller: valorController,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: const InputDecoration(labelText: "Digite o valor"),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300.0,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                child: const Text("Confirmar Pix"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
