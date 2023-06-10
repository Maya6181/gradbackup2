

import 'package:bel_gomlaa/electronics-pages/electronics-page.dart';
import 'package:bel_gomlaa/fashion-pages/fashion-page.dart';
import 'package:bel_gomlaa/profile.dart';
import 'package:bel_gomlaa/supermarket-pages/supermarket.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart-pages/cart-page.dart';
import '../notifications-page.dart';
import '../wishlist-page.dart';



class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Widget build(BuildContext context) {
    return Scaffold(


            body: SingleChildScrollView(
            child: Column(
                children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff58006D)),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Do something when search icon button is pressed.
                  },
                ),
                 Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                IconButton(
                  icon: Icon(Icons.mic),
                  onPressed: () {
                    // Do something when voice icon button is pressed.
                  },
                ),
              ],
            ),
          ),
           Column(

            children: [

              Padding(padding: EdgeInsets.all(8)),
              Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FashionPage()));
                  print("fashion");
                },
                child: Container(
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.fromLTRB(20, 25, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/fashion.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Fashion',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SupermarketPage()));
                  print("supermarket");
                },
                child: Container(
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/supermarket.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Supermarket',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ElectronicsPage()));
                  print("electronics");
                },
                child: Container(
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/electronics.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Electronics',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),


            ]
          ),
            )
            );

  }
}
