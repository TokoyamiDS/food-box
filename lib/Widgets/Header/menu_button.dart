import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Scaffold.of(context).openDrawer(),
      icon: const Icon(Icons.menu),
    );
  }
}

class MyScaffoldDrawer extends StatelessWidget {
  const MyScaffoldDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: const Text("هدر"),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text("خانه"),
            onTap: null,
          ),
          const ListTile(
            title: Text("دوم"),
            onTap: null,
          ),
          const ListTile(
            title: Text("سوم"),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
