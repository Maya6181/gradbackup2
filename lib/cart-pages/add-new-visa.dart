import 'package:bel_gomlaa/cart-pages/payment-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewCardPage extends StatefulWidget {
  @override
  _NewCardPageState createState() => _NewCardPageState();
}

class _NewCardPageState extends State<NewCardPage> {

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text('Add new card',
              style: TextStyle(
                color: Color(0xff58006D),
              ),

            ),

            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Color(0xff58006D),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                color: Color(0xff58006D),
                onPressed: () {},
              ),
            ]
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30,40,40,90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Image(
          image: AssetImage('assets/images/cards.png'),
          height: 150,
          width: 200,
          ),
              TextField(

                decoration: InputDecoration(
                  labelText: 'Card Number',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(

                decoration: InputDecoration(
                  labelText: 'Card Holder Name',
                ),
              ),
              SizedBox(height: 32.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(

                      decoration: InputDecoration(
                        labelText: 'Expiry Date',
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(

                      decoration: InputDecoration(
                        labelText: 'CVV',
                      ),
                    ),
                  ),
                ],
              ),SizedBox(height: 70),
        SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff58006D),
              elevation: 3, //elevation of button
              shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()));

              print('Save');
            },
            child: Text('Save',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18),),
          ),
        ),
            ],
          ),
        ),
      ),
    );
  }
}