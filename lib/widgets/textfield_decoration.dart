import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:library_app_flutter/screens/books2.dart';

class TextFieldDecoration extends StatelessWidget {
  String bookName = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (value) {
          bookName = value;
        },
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                Get.to(SearchedBooks(), arguments: bookName);
              },
              child: Icon(
                Icons.search_rounded,
                color: Colors.green,
                size: 50,
              ),
            ),
            hintText: 'Search Books by name',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF3BBB6D)),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
