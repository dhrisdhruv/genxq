import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySearchBarState();
  }

}

class MySearchBarState extends State<MySearchBar> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SearchBar(
        leading: Icon(Icons.search),
        elevation: MaterialStateProperty.all(20),
        hintText: 'Search...',
        controller: _textEditingController,
        onChanged: (String value) {
          // nothing for now
        },
        onTap: (){
          // nothing for now
        },
        onSubmitted: (String value) {
          // nothing for now
        },
      ),
    );
  }

}