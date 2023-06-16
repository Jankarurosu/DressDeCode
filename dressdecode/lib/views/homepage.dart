import 'package:dressdecode/views/userprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('¡Hola Rosa!',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white)),
                  subtitle: Text('¡Buenos dias!',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white54)),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/user.jpeg'),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard(
                    'Productos',
                    CupertinoIcons.bag,
                    Colors.deepOrange,
                    () {
                      navigateToProductsPage(context);
                    },
                  ),
                  itemDashboard(
                    'Escaner',
                    CupertinoIcons.barcode_viewfinder,
                    Colors.green,
                    () {
                      navigateToScannerPage(context);
                    },
                  ),
                  itemDashboard(
                    'Ajustes',
                    CupertinoIcons.settings,
                    Colors.purple,
                    () {
                      navigateToSettingsPage(context);
                    },
                  ),
                  itemDashboard(
                    'Categorias',
                    CupertinoIcons.archivebox_fill,
                    Colors.blue,
                    () {
                      navigateToCategoryPage(context);
                    },
                  ),
                  itemDashboard(
                    'Usuario',
                    CupertinoIcons.person_circle,
                    Colors.grey,
                    () {
                      navigateToUserPage(context);
                    },
                  ),
                  itemDashboard(
                    'Negocios',
                    CupertinoIcons.chart_bar_fill,
                    Colors.brown,
                    () {
                      navigateToBusinessPage(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  void navigateToProductsPage(BuildContext context) {
    // Implementa la navegación a la página de productos aquí
    print('Navigating to Products Page');
  }

  void navigateToScannerPage(BuildContext context) {
    // Implementa la navegación a la página del escáner aquí
    print('Navigating to Scanner Page');
  }

  void navigateToSettingsPage(BuildContext context) {
    // Implementa la navegación a la página de configuraciones aquí
    print('Navigating to Settings Page');
  }

  void navigateToCategoryPage(BuildContext context) {
    // Implementa la navegación a la página de categorías aquí
    print('Navigating to Category Page');
  }

  void navigateToUserPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserProfile()),
    );
  }

  void navigateToBusinessPage(BuildContext context) {
    // Implementa la navegación a la página de negocios aquí
    print('Navigating to Business Page');
  }

  Widget itemDashboard(String title, IconData iconData, Color background,
      VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 5,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(iconData, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              title.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontSize: 18), // Modifica el tamaño de fuente aquí
            ),
          ],
        ),
      ),
    );
  }
}
