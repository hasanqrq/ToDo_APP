import 'package:flutter/material.dart';
import 'package:todo_using_hivedb/screens/AddTask/AddTaskScreen.dart';

PreferredSizeWidget customappbar(BuildContext context, String title) {
  return AppBar(
      backgroundColor: const Color(0xff7646FF),
      leading: InkWell(
          onTap: () {}, child: Image.asset('images/menu_icon.png', scale: 2.5)),
      title: Text(title),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => AddTask()));
            },
            icon: const Icon(Icons.add))
      ]);
}
