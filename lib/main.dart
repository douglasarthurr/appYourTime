import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Tag {
  final String text;
  final Color color;

  Tag(this.text, this.color);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your time',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 226, 171, 53)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'YourTime'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 1440;

  TextEditingController value = TextEditingController();
  TextEditingController newValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset('assets/images/crc.png'),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF), Color(0xFFFFC581)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'CRC: $_counter',
                style: const TextStyle(
                  fontSize: 40.0,
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2.0,
              ),
              const SizedBox(height: 2.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
            
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      minimumSize: const Size(100, 30),
                    ),
                    child: const Column(
                      children: <Widget>[
                        Text(
                          'Ver Extrato',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Container(
                      width: 350,
                      height: 300, 
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(
                            10),
                      ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 12.0),
                          child: SizedBox(
                            width: 250.0,
                            child: TextField(
                              keyboardType: const TextInputType.numberWithOptions(),
                              controller: value,
                              decoration: const InputDecoration(
                                labelText: 'Crc',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                ),
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}