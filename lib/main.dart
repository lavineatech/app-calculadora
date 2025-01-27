import 'package:flutter/material.dart';

import 'calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(230, 16, 16, 16)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key, 
    required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                 // color: const Color.fromARGB(255, 73, 222, 233),
               // child: const Text('Layout Superior'),
              ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        // color: Colors.blue,
                        // child: const Text('Primeira Coluna'),
                        ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 149, 161, 169),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 196, 209, 213),
                                blurRadius: 10,
                                offset: Offset(10, 25))
                          ]),
                      child: const Calculadora(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        // alignment: Alignment.center,
                        // color: Colors.purpleAccent,
                        // child: const Text('Terceira Coluna'),
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
               // alignment: Alignment.center,
                //color: const Color.fromARGB(255, 46, 235, 87),
               // child: const Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}