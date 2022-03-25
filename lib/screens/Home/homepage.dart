import 'package:flutter/material.dart';
import 'package:todo_using_hivedb/screens/Home/homeBloc.dart';
import 'package:todo_using_hivedb/sharedwidget/customappbar.dart';
import 'package:todo_using_hivedb/sharedwidget/pageviewer.dart';
import 'package:todo_using_hivedb/sharedwidget/searchfield.dart';

class MyHomePage extends StatefulWidget {
  String username;

  MyHomePage(this.username);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var bloc = HomeBloc();

  @override
  void initState() {
    bloc.userName = widget.username;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(context, 'ThingsTOD'),
        body: Column(
          children: [
            Container(
              color: const Color(0xff7646FF),
              child: searchfield(bloc.searchController),
            ),
            Expanded(
              child: pageviewer(context, bloc),
            ),
          ],
        ));
  }
}
