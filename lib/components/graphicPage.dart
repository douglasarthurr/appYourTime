import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class graphicPage extends StatefulWidget {
  const graphicPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<graphicPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<graphicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Row(
          children: [
            Text(
              'Gráfico',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF), Color(0xFFFFC581)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // Espaço entre o texto e o Container
              Container(
                width: 561, // Largura desejada
                height: 242, // Altura desejada (metade da altura original)
                padding: const EdgeInsets.all(20.0),
                color: const Color.fromARGB(255, 228, 140, 58),
                child: Center(
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          color: const Color.fromARGB(255, 109, 2, 109),
                          value: 45,
                          title: '45%',
                          radius: 60,
                          titleStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          ),
                        ),
                        PieChartSectionData(
                          color: const Color.fromARGB(255, 233, 233, 233),
                          value: 30,
                          title: '30%',
                          radius: 60,
                          titleStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          ),
                        ),
                        PieChartSectionData(
                          color: Colors.green,
                          value: 20,
                          title: '20%',
                          radius: 60,
                          titleStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          ),
                        ),
                        PieChartSectionData(
                          color: const Color.fromARGB(255, 231, 21, 21),
                          value: 5,
                          title: '5%',
                          radius: 60,
                          titleStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Espaço entre o gráfico e os textos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 12.0,
                    height: 12.0,
                    color: const Color.fromARGB(255, 233, 233, 233),
                  ),
                  const Text(
                    'Trabalho',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 12.0,
                    height: 12.0,
                    color: Colors.green,
                  ),
                  const Text(
                    'Estudo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 12.0,
                    height: 12.0,
                    color: const Color.fromARGB(255, 231, 21, 21),
                  ),
                  const Text(
                    'Lazer',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 12.0,
                    height: 12.0,
                    color: const Color.fromARGB(255, 109, 2, 109),
                  ),
                  const Text(
                    'Sono',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
