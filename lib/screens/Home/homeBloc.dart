import 'package:flutter/material.dart';
import 'package:todo_using_hivedb/models/todos.dart';

class HomeBloc {
  String userName = "";

  List<TODOS> myTodo = [
    TODOS(
      currentTime: DateTime.now(),
      title: "Abed",
      desc: "abed test",
      color: Colors.red,
      taskType: TASKTYPE.WEEKLY,
    ),
    TODOS(
      currentTime: DateTime.now(),
      title: "Sawan",
      desc: "sawsan test",
      color: Colors.yellow,
      taskType: TASKTYPE.DAILY,
    ),
    TODOS(
      currentTime: DateTime.now(),
      title: "Laila",
      desc: "laila test",
      color: Colors.pink,
      taskType: TASKTYPE.DAILY,
    ),
    TODOS(
      currentTime: DateTime.now(),
      title: "Laila",
      desc: "laila test",
      color: Colors.pink,
      taskType: TASKTYPE.MONTHLY,
    )
  ];

  TextEditingController searchController = TextEditingController();

  String getCorrectTimingToDisplay() {
    var currentTime = DateTime.now();

    if (currentTime.hour < 12) {
      return "Good Morning";
    } else if ((currentTime.hour >= 12) && (currentTime.hour <= 18)) {
      return "Good Afternoon";
    } else {
      return "Good Evning";
    }
  }
}
