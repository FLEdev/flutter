import 'package:flutter/material.dart' hide NavigationDrawer;
import '../components/navigation.dart';
class PageOneApp extends StatefulWidget {
  const PageOneApp({super.key});

  final String title = 'Page 1';

  @override
  State<PageOneApp> createState() => _PageOneAppState();
}

class _PageOneAppState extends State<PageOneApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff2596be),
        leadingWidth: 40,
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
              '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year} - You are on Page1.',
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