import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../bottom-navbar.dart';
import '../home-page/homepage.dart';

class CustomButton extends StatelessWidget {
   CustomButton({ required this.text});
String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
width: 150,
    child:  ElevatedButton(
        style: ElevatedButton.styleFrom(

        primary: Color(0xff58006D),
    ),
    child:(
      Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 18),
    )
    ),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CategoriesPage()),
    );
    },
    ),
    );


  }
}
