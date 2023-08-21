import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dio Project'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _dicrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: Container(
                  color: Colors.green,
                  child: const Column(
                    children: [
                      Flexible(
                        child: UserAccountsDrawerHeader(
                          accountName: Text('Pablo Tertuliano'),
                          accountEmail: Text('pabloftsilva@gmail.com'),
                          currentAccountPicture: CircleAvatar(
                              foregroundImage:
                                  AssetImage("../lib/images/pablo.jpg")),
                        ),
                      ),
                    ],
                  ),
                )),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            const ListTile(
              leading: Icon(Icons.card_travel),
              title: Text("About"),
            ),
            const ListTile(
              leading: Icon(Icons.developer_board),
              title: Text("Developer"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  elevation: 15,
                  shadowColor: Colors.red),
              onPressed: _incrementCounter,
              child: const Text(
                'CLIQUE AQUI PARA SOMAR +',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                elevation: 15,
                shadowColor: Colors.purple,
              ),
              onPressed: _dicrementCounter,
              child: const Text(
                'CLIQUE AQUI PARA SUBTRAIR -',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const Text('CONTADOR DE CLIQUES!',
                style: TextStyle(color: Colors.red, fontSize: 30)),
            const Text('RESULTADO ATUAL:',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                )),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
