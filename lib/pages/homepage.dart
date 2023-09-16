import 'package:flutter/material.dart';
import 'package:genxq/utilities/appbar.dart';
import 'package:genxq/utilities/drawer.dart';
import 'package:genxq/utilities/search.dart';
import 'package:animated_icon_button/animated_icon_button.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      endDrawer: MyDrawer(),
      body: Column(
        children: [
          Center(
            child: MySearchBar(),
          ),

          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height/1.5,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('50% Off',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Text('Trade-in-offer',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Text('Super Value Deals',
                    style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
                    softWrap: true,
                  ),
                  SizedBox(height: 10,),
                  Text('On All Products',
                    style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
                    softWrap: true,
                  ),
                  SizedBox(height: 10,),
                  Text('"Your Style, Your Story, GenXQ Wears It All"',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: ()=>Navigator.pushNamed(context, '/shoppage'),
                    child: Row(
                      children: [
                        Text('Shop Now',
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        AnimatedIconButton(
                          icons: [
                            AnimatedIconItem(icon: Icon(Icons.arrow_forward)),
                            AnimatedIconItem(icon: Icon(Icons.shopping_bag)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}