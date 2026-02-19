import 'package:flutter/material.dart';
import '/pages/home.dart';
import '/pages/pageOne.dart';

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
                //Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomeApp(),
                  )
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.ads_click_sharp),
              title: const Text('Page One'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const PageOneApp(),
                    )
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.ads_click_sharp),
              title: const Text('Page Two (NA)'),
              onTap: () => { print('Page 2')},
            ),
            ListTile(
              leading: const Icon(Icons.ads_click_sharp),
              title: const Text('Page Three (NA)'),
              onTap: () => { print('Page 3')},
            ),
          ]
      )

  );
}
