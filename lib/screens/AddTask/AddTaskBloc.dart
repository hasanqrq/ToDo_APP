import 'package:flutter/material.dart';

class AddTaskBloc {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController timeAndDatePickerController = TextEditingController();
  TextEditingController setPriorityController = TextEditingController();
  TextEditingController notificationsController = TextEditingController();
  String selectedDate = "";
  Color selectedColor = Colors.black;
}

Widget ourCustomField(TextEditingController controller, String inputFieldText) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: inputFieldText,
    ),
  );
}

selectDate(BuildContext context) async {
  DateTime selectedDate = DateTime.now();
  final DateTime? selected = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(2010),
    lastDate: DateTime(2025),
  );
  if (selected != null && selected != selectedDate) {
    selectedDate = selected;
  }
}

class AddBotton extends StatelessWidget {
  const AddBotton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: const Color(0xff7646FF)),
      child: const Center(
        child: Text(
          "ADD",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PrioritySelect extends StatelessWidget {
  Color circleColor;
  PrioritySelect({required this.circleColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: CircleAvatar(
        radius: 12,
        backgroundColor: circleColor,
      ),
    );
  }
}
