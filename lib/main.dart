import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:flutter_basic/components/navigation.dart';

void main() => runApp(const BootstrapApp());

class BootstrapApp extends StatelessWidget {
  const BootstrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boilerplate APP',
      theme: ThemeData(useMaterial3: true),
      home: const HomeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  final String title = 'Flutter Demo Home Page';

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff2596be),
        leadingWidth: 40,
        /*leading: IconButton(
          onPressed: () => {print('pressed menu button')},
          icon: const Icon(Icons.menu),
        ),*/
        title: const Text('Flutter Boilerplate project'),
        centerTitle: true,
      ),
      //appBar: AppBar(title: Text('Flutter Demo Home Pageeis'), centerTitle: true),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://www.nasa.gov/wp-content/uploads/2026/02/55045264883-165c405a2d-o.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.orange,
            child: Text(
              '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year} - Nothing is impossible.',
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('You have pushed the button!');
        },
        //child: Icon(Icons.add),
        child: const Text('+', style: TextStyle(color: Colors.pink)),
      ),
    );
  }
}
