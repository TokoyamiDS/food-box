import 'package:flutter/material.dart';
import 'package:foodbox/Widgets/Header/menu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black54,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 5.0,
        leading: const MenuButton(),
        title: const Text(
          'خانه',
          style: TextStyle(fontSize: 25.5, fontWeight: FontWeight.bold),
        ),
        actions: [
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('gg'),
                  action: SnackBarAction(
                    onPressed: () {},
                    label: 'Refresh',
                  ),
                  behavior: SnackBarBehavior.floating,
                  showCloseIcon: true,
                  closeIconColor: Colors.amber[300],
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      drawer: const MyScaffoldDrawer(),
      body: Center(
        child: Text(
          'تعداد: $counter',
          style: const TextStyle(
              fontFamily: 'IranSansDN',
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
        child: IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: const Icon(Icons.add)),
      ),
    );
  }
}
