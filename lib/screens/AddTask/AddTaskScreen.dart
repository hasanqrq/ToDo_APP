import 'package:flutter/material.dart';
import 'package:todo_using_hivedb/screens/AddTask/AddTaskBloc.dart';
import '../../sharedwidget/customappbar.dart';
import 'AddTaskBloc.dart';

class AddTask extends StatefulWidget {
  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  var bloc = AddTaskBloc();

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customappbar(context, "NEW TASK"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ourCustomField(bloc.titleController, "Title"),
              ourCustomField(bloc.descController, "Description"),
              ourCustomField(bloc.categoryController, "Category"),
              InkWell(
                onTap: (() {
                  setState(() {});
                  selectDate(context);
                }),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xff707070))),
                    color: Colors.white,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 4, top: 16, bottom: 8),
                    child: Text(
                      "Pick Date & Time",
                      style: TextStyle(fontSize: 16, color: Color(0xff172735)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff707070))),
                  color: Colors.white,
                ),
                height: 50,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.only(left: 4, top: 10, bottom: 10),
                  child: Text("Priority",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff707070))),
                  color: Colors.white,
                ),
                height: 70,
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrioritySelect(
                            circleColor: const Color(0xffFC5565),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrioritySelect(
                            circleColor: const Color(0xffFA9B4A),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrioritySelect(
                            circleColor: const Color(0xff58BBF7),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrioritySelect(
                            circleColor: const Color(0xff4CCB41),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 50,
                          ),
                        ),
                      ],
                    )),
              ),
              ourCustomField(bloc.notificationsController, "Notification"),
              Expanded(flex: 6, child: Container()),
              const Expanded(
                child: AddBotton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
