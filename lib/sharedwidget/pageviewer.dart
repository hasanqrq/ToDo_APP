import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';
import 'package:todo_using_hivedb/models/todos.dart';
import 'package:todo_using_hivedb/screens/Home/homeBloc.dart';
import 'package:todo_using_hivedb/screens/daily_screen.dart';

Widget pageviewer(BuildContext context, HomeBloc bloc) {
  return TitleScrollNavigation(
    barStyle: const TitleNavigationBarStyle(
      style: TextStyle(fontWeight: FontWeight.bold),
      spaceBetween: 120,
      background: Color(0xff7646FF),
      activeColor: Colors.white,
      deactiveColor: Colors.white,
      padding: EdgeInsets.only(left: 50.0, right: 50, bottom: 25, top: 10),
      elevation: 5.0,
    ),
    identiferStyle: const NavigationIdentiferStyle(
      color: Colors.white,
    ),
    titles: const ["DAILY", "WEEKLY", "MONTHLY"],
    pages: [
      SubList(bloc,
          bloc.myTodo.where((i) => i.taskType == TASKTYPE.DAILY).toList()),
      SubList(bloc,
          bloc.myTodo.where((i) => i.taskType == TASKTYPE.WEEKLY).toList()),
      SubList(bloc,
          bloc.myTodo.where((i) => i.taskType == TASKTYPE.MONTHLY).toList())
    ],
  );
}
