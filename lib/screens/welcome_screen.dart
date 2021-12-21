import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../book_services/authentication.dart';
import 'sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // Container(
          //   child: Stack(children: [
          //     Padding(
          //       padding: EdgeInsets.all(40.0),
          //       child: Text(
          //         'Welcome Readers',
          //         style: TextStyle(
          //             fontSize: 56,
          //             fontFamily: 'Montserrat',
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black),
          //       ),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.fromLTRB(300.0, 140.0, 8.0, 8.0),
          //       child: Icon(
          //         Icons.circle,
          //         color: Color(0xFF3BBB6D),
          //       ),
          //     )
          //   ]),
          // ),
          SizedBox(
            height: 100,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.greenAccent,
                color: Color(0xFF3BBB6D),
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {
                    Get.to(SignIn());
                  },
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.yellowAccent,
                color: Colors.yellow,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/genres');
                  },
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      'CONTINUE WITHOUT LOGIN',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
              ),
            ),
          ),
          Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text(
                    'Made With ❤ using Google Books API😉',
                    style: TextStyle(
                        fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                  )))
        ],
      )),
    );
  }
}
