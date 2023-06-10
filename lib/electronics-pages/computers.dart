import 'package:bel_gomlaa/cart-pages/cart-page.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../products-description.dart';
import '../products.dart';
import '../profile.dart';
import '../wishlist-page.dart';

class ComputerPage extends StatefulWidget{
  _ComputerPageState createState() =>  _ComputerPageState();
}

class  _ComputerPageState  extends State<ComputerPage> {
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Computer',
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
SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(

                    itemCount: computer.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemBuilder: (context, index) => InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:computer[index])));
                        },
                        child: buildCard(computer[index])),
                  ),
                ),

                      ]
                      )

                )

    );

  }
  Widget buildCard(
      Computer ,
      ) => Container(
    width: 190,

    child: Column(
      children: [
        Expanded(
            child:
            AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  Computer.image,
                  fit: BoxFit.cover,

                ),
              ),
            )
        ),
        SizedBox(height: 5),

            Text(
              Computer.name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),



        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Computer.price,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.shopping_cart),
              ),

            ],
          ),
        ),
          ],
        ),
      );
}
