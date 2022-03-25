import 'package:flutter/material.dart';

enum TASKTYPE { DAILY, MONTHLY, WEEKLY }

class TODOS {
  DateTime currentTime;
  String title;
  String desc;
  TASKTYPE taskType;

  Color color;
  bool inWatchList;

  TODOS(
      {required this.currentTime,
      required this.title,
      required this.desc,
      required this.color,
      required this.taskType,
      this.inWatchList = false});
}
