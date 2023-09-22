import 'package:flutter/material.dart';

class pixPage extends StatefulWidget {
  const pixPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<pixPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<pixPage> {
  final int _counter = 1440;
  TextEditingController value = TextEditingController();
  TextEditingController description = TextEditingController();

  String? selectedTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset('assets/images/crc.png'),
          ),
          backgroundColor: Colors.white,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFFFFF), Color(0xFFFFC581)],
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          minimumSize: const Size(100, 30),
                        ),
                        child: const Text(
                          'Ver Extrato',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50.0),
                      Container(
                        width: 400,
                        height: 475,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 12.0),
                              child: SizedBox(
                                width: 200.0,
                                child: TextField(
                                  keyboardType:
                                      const TextInputType.numberWithOptions(),
                                  controller: value,
                                  decoration: const InputDecoration(
                                    labelText: 'CRC',
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25.0,
                                    ),
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 12.0),
                              child: SizedBox(
                                width: 200.0,
                                child: TextField(
                                  controller: description,
                                  decoration: const InputDecoration(
                                    hintText: 'Descrição do Pix',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                    ),
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15.0),
                              child: Column(
                                // Altere de Column para Row aqui
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Qual é sua atividade?:',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  RadioListTile<String>(
                                    title: const Text(
                                      'Trabalho',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: 'Trabalho',
                                    groupValue: selectedTag,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedTag = value;
                                      });
                                    },
                                    activeColor: selectedTag == 'Trabalho'
                                        ? Colors.grey
                                        : Colors.black,
                                  ),
                                  RadioListTile<String>(
                                    title: const Text(
                                      'Estudo',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: 'Estudo',
                                    groupValue: selectedTag,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedTag = value;
                                      });
                                    },
                                    activeColor: selectedTag == 'Estudo'
                                        ? Colors.green
                                        : Colors.black,
                                  ),
                                  RadioListTile<String>(
                                    title: const Text(
                                      'Sono',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: 'Sono',
                                    groupValue: selectedTag,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedTag = value;
                                      });
                                    },
                                    activeColor: selectedTag == 'Sono'
                                        ? Colors.purple
                                        : Colors.black,
                                  ),
                                  RadioListTile<String>(
                                    title: const Text(
                                      'Lazer',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: 'Lazer',
                                    groupValue: selectedTag,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedTag = value;
                                      });
                                    },
                                    activeColor: selectedTag == 'Lazer'
                                        ? Colors.red
                                        : Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50.0),
                      SizedBox(
                        width: 400.0,
                        height: 35.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          child: const Text(
                            'Enviar',
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
