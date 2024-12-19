import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
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
                color: Colors.amber,
                child: const Text ('Layout Superior'),
              ),
            ),
            Expanded(
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.purple,
                child: const Text('Primeira Coluna'),
              ),
            ),
            Expanded (
              child: Container(
                alignment: Alignment.center,
                color: Colors.green,
                child: const Text ('Segunda Coluna'),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text ('Terceira coluna'),
              ),
            ),
          ],
        ),
      ),    
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: const Text ('Layout Inferior'),
              ),
            ),
          
          
          
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}