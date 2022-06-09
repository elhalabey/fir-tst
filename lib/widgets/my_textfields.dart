import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({required this.title, required this.hinttitle});

  //final Color color;  required this.color,  , required this.onChange
  final String title;
  final String hinttitle;
  //final Function onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onChanged: (value) {
        //_nameController.text = value;
      },
      decoration: InputDecoration(
        hintText: hinttitle,
        labelText: title,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.orange,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
