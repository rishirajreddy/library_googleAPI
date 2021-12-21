import 'package:flutter/material.dart';

class Textdec extends StatelessWidget {
  final String hint;
  final Icon icon1;
  final bool show;
  final TextEditingController control;

  Textdec({
    this.hint,
    this.icon1,
    this.show,
    this.control,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: TextFormField(
        controller: control,
        decoration: InputDecoration(
          prefixIcon: icon1,
          hintText: hint,
          hintStyle: TextStyle(fontFamily: 'Montserrat'),
          border: InputBorder.none,
        ),
        obscureText: show,
      ),
    );
  }
}
