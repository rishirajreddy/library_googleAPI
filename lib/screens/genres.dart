import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:library_app_flutter/book_services/services.dart';
import 'package:library_app_flutter/screens/books.dart';
import 'package:library_app_flutter/widgets/resuableCard.dart';
import 'package:library_app_flutter/widgets/textfield_decoration.dart';

class Genres extends StatelessWidget {
  bool isClicked = false;
  String name = '';
  BookServices service = BookServices();  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3BBB6D),
        leading: Icon(Icons.book),
        title: Text(
          'Select Genre',
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFieldDecoration(),
              ReusableCard(
                color: Colors.greenAccent,
                text: 'Fiction',
                onTap: () {
                  Get.to(Books(), arguments: 'fiction');
                },
              ),
              ReusableCard(
                color: Colors.yellow,
                text: 'Comedy',
                onTap: () {
                  Get.to(Books(), arguments: 'comedy');
                },
              ),
              ReusableCard(
                color: Colors.pinkAccent,
                text: 'Romance',
                onTap: () {
                  Get.to(Books(), arguments: 'romance');
                },
              ),
              ReusableCard(
                color: Colors.redAccent,
                text: 'Drama',
                onTap: () {
                  Get.to(Books(), arguments: 'drama');
                },
              ),
              ReusableCard(
                color: Colors.green,
                text: 'Science',
                onTap: () {
                  Get.to(Books(), arguments: 'science');
                },
              ),
              ReusableCard(
                color: Colors.purpleAccent,
                text: 'Computers',
                onTap: () {
                  Get.to(Books(), arguments: 'computers');
                },
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Text('Made With ❤ using Google Books API😉',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,fontFamily: 'Montserrat'
                      )),
                ),
              )
            ],
          ))
        ],
      )),
    );
  }
}
