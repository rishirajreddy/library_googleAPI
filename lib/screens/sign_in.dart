import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../book_services/authentication.dart';
import '../widgets/decoration.dart';
import 'genres.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Text(
                  'Book',
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0, left: 40),
                child: Text(
                  'Man',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 50,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 55.0, left: 150),
                child: Icon(
                  Icons.book_rounded,
                  size: 40,
                  color: Color(0xFF3BBB6D),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 10,
          ),
          Textdec(
            control: _email,
            hint: "Email",
            icon1: Icon(Icons.email),
            show: false,
          ),
          Textdec(
            control: _password,
            hint: "Password",
            icon1: Icon(Icons.lock),
            show: true,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              bool showNavigate = await loginIn(_email.text, _password.text);
              if (showNavigate) {
                Get.to(Genres(), transition: Transition.rightToLeftWithFade);
              }
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF3BBB6D),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
