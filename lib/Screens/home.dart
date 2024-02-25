import 'dart:math';

import 'package:flutter/material.dart';
import '../Models/todo.dart';
import '../Constants/colors.dart';
import '../Widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final toDoLists = ToDo.todoList();
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(children: [
          SearchBox(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 50),
                  child: Text(
                    "All ToDos",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
                for (ToDo todo in toDoLists) TodoItem(),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget SearchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                color: tdBlack,
                size: 20,
              ),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 20, minWidth: 20),
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(color: tdGrey))),
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
