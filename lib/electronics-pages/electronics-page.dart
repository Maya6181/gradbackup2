
import 'package:bel_gomlaa/electronics-pages/computers.dart';
import 'package:bel_gomlaa/electronics-pages/headphones.dart';
import 'package:bel_gomlaa/electronics-pages/mobile-page.dart';
import 'package:bel_gomlaa/electronics-pages/tv-page.dart';
import 'package:bel_gomlaa/products.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart-pages/cart-page.dart';
import '../products-description.dart';
import '../profile.dart';
import '../wishlist-page.dart';



class ElectronicsPage extends StatefulWidget{
  _ElectronicspageState createState() =>  _ElectronicspageState();
}

class  _ElectronicspageState  extends State<ElectronicsPage> {
  int currentIndex =0;

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Electronics',
          style: TextStyle(color: Color(0xff58006D)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Color(0xff58006D),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()));
              print("cart page");

            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Color(0xff58006D),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
              children: [

          Container(
          decoration: BoxDecoration(
          border: Border.all(color: Color(0xff58006D)),
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
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
    hintStyle: TextStyle(color: Color(0xff58006D)),
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
   Padding(
    padding: EdgeInsets.all(10),
    child: Column(
    children: [

    Padding(
    padding: EdgeInsets.all(5),
    child: new ButtonBar(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            child: new Text('Mobiles',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),),
            color: Colors.purple,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MobilePage()));
            },
          ),
SizedBox(width: 50,),

      FlatButton(
        child: Text('TV',
          style: TextStyle(
              color: Colors.white,
            fontSize: 15,
          ),),
        color: Colors.purple,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TvPage()));
        },
      ),
          SizedBox(width: 50,),
          FlatButton(
            child: Text('Computer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),),
            color: Colors.purple,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComputerPage()));

            },
          ),
        ],
      ),

SizedBox(height: 10,),
      Center(
        child: FlatButton(
          child: Text('Headphones',
            style: TextStyle(
                color: Colors.white,
              fontSize: 15,
            ),),
          color: Colors.purple,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HeadphonesPage()));

          },
        ),
      ),

        ],

    ),
    ),
      SizedBox(height: 20),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          ' Top Picks',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      Container(
        height: 350,

        child: ListView.separated(
          padding: EdgeInsets.all(16),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
          itemBuilder: (context, index) => InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:electronics[index])));
              },
              child: buildCard(electronics[index])),
        ),
      ),
      SizedBox(height: 20),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          ' Best Sellers',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      Container(
        height: 350,

        child: ListView.separated(
          padding: EdgeInsets.all(16),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
          itemBuilder: (context, index) => InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:electronics[index])));
              },
              child: buildCard(electronics[index])),
        ),
      ),
    SizedBox(height: 25,),


    ]
    )

    )
    ]

    ),

      )
    );

  }
  Widget buildCard(
      Electronics,
      ) =>
      Container(
        width: 190,
        child: Column(
          children: [
            Expanded(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(

                      Electronics.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            SizedBox(height: 4),
            Text(
              Electronics.name,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Electronics.price,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                Icon(Icons.shopping_cart)
              ],
            ),
          ],
        ),
      );
}
