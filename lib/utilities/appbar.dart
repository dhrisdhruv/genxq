import 'package:flutter/material.dart';
import 'package:genxq/pages/homepage.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 200,
      leading: IconButton(
        icon: Image.asset('assets/images/logo.png'),
        onPressed: () {
          Navigator.pushNamed(context, '/homepage');
        },
      ),
      actions: [
        IconButton(onPressed: () {Navigator.pushNamed(context, '/cartpage');}, icon: Icon(Icons.shopping_bag)),
        IconButton(onPressed: () {Navigator.pushNamed(context, '/accountpage');}, icon: Icon(Icons.person)),
        IconButton(onPressed: () {Scaffold.of(context).openEndDrawer();}, icon: Icon(Icons.arrow_back)),
      ],
      shadowColor: Colors.black,
      backgroundColor: Colors.black,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}