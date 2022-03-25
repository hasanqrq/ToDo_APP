import 'package:flutter/material.dart';

Widget searchfield(TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, right: 12, top: 8, bottom: 8),
    child: TextField(
      controller: controller,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff7646FF),
            width: 2.0,
          ),
        ),
        suffixIcon: Icon(
          Icons.search,
          color: Color(0xff7646FF),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search',
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xff7646FF),
        )),
      ),
    ),
  );
}
