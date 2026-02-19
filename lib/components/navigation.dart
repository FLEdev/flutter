import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],

      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: Column(
        children: const [
          Text('Menu'),
        ],
      )
  );

  Widget buildMenuItems(BuildContext context) => Container(
      padding: EdgeInsets.all(24),
      child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomeApp(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.ads_click_sharp),
              title: const Text('Page 1'),
              onTap: () => { print('Page 1')},
            ),
            ListTile(
              leading: const Icon(Icons.ads_click_sharp),
              title: const Text('Page 2'),
              onTap: () => { print('Page 2')},
            ),
            ListTile(
              leading: const Icon(Icons.ads_click_sharp),
              title: const Text('Page 3'),
              onTap: () => { print('Page 3')},
            ),
          ]
      )

  );
}
