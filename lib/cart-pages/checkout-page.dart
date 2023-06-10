import 'package:bel_gomlaa/bottom-navbar.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xff58006D),
        elevation: 0,
        centerTitle: true,
        title: Text('Checkout',
        style: TextStyle(
        color: Colors.white,
    ),

    ),

    ),
      backgroundColor: Color(0xff58006D),
      body: Column(

        children: [

          SizedBox(height: 5,),
          Center(
            child: Image(
              image: AssetImage('assets/images/confirm.png'),
              height: 260,
              width: 240,
            ),
          ),
          Text('Order Successful',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white
          )
          ),

SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Your order is approved and will \n be available within few days',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                   color: Colors.white,
                  )
              ),
            ),

          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Thank you for using BelGomla!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                )
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(
            height: 50,
            width: 180,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                  color: Colors.purple, // Set the desired border color
                  width: 2.0, // Set the desired border width
                ),
                ),
              ),
              onPressed: () {

              },
              child: Text('Track Order',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 18),),
            ),
          ),


          SizedBox(height: 20),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoriesPage()));

                print('payment');
              },
              child: Text('Continue shopping',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 18),),
            ),
          ),
        ],

      ),
    );

  }
}
