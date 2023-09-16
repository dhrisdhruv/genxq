import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyDrawerState();
  }

}

class MyDrawerState extends State<MyDrawer> {

  List<bool> isHovering = List.filled(5, false);

  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(227, 230, 243,1),
      elevation: 200,
      child: Padding(
        padding: EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Icon(
                Icons.close,
                color: isHovering[0]?Colors.green:Colors.purple,),
              onTap: () => Navigator.of(context).pop(),
              onHover: (val) {
                setState(() {
                  isHovering[0] = val;
                });
              },
            ),

            SizedBox(height: 20,),

            InkWell(
              child: Row(
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                      color: isHovering[1]?Colors.green:Colors.purple,
                      decoration: isHovering[1]?TextDecoration.underline:TextDecoration.none,
                      fontWeight: isHovering[1]?FontWeight.bold:FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              onTap: ()=> Navigator.pushNamed(context, '/homepage'),
              onHover: (val) {
                setState(() {
                  isHovering[1] = val;
                });
              },
            ),

            SizedBox(height: 20,),

            InkWell(
              child: Row(
                children: [
                  Text(
                    'Shop',
                    style: TextStyle(
                      color: isHovering[2]?Colors.green:Colors.purple,
                      decoration: isHovering[2]?TextDecoration.underline:TextDecoration.none,
                      fontWeight: isHovering[2]?FontWeight.bold:FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              onTap: ()=> Navigator.pushNamed(context, '/shoppage'),
              onHover: (val) {
                setState(() {
                  isHovering[2] = val;
                });
              },
            ),

            SizedBox(height: 20,),

            InkWell(
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: isHovering[3]?Colors.green:Colors.purple,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: isHovering[3]?Colors.green:Colors.purple,
                      decoration: isHovering[3]?TextDecoration.underline:TextDecoration.none,
                      fontWeight: isHovering[3]?FontWeight.bold:FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              onTap: ()=> Navigator.pushNamed(context, '/accountpage'),
              onHover: (val) {
                setState(() {
                  isHovering[3] = val;
                });
              },
            ),

            SizedBox(height: 20,),

            InkWell(
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_bag,
                    color: isHovering[4]?Colors.green:Colors.purple,
                  ),
                  Text(
                    'View Order',
                    style: TextStyle(
                      color: isHovering[4]?Colors.green:Colors.purple,
                      decoration: isHovering[4]?TextDecoration.underline:TextDecoration.none,
                      fontWeight: isHovering[4]?FontWeight.bold:FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              onTap: ()=> Navigator.pushNamed(context, '/cartpage'),
              onHover: (val) {
                setState(() {
                  isHovering[4] = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}