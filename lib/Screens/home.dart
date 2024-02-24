import 'package:flutter/material.dart';
import 'package:to_do_list/Constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(child: Text("Hello World!")),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              child: Image.asset("assets/images/man.jpg"),
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
      backgroundColor: tdBGColor,
    );
  }
}
