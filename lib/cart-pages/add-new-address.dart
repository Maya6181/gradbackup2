import 'package:bel_gomlaa/cart-pages/delivery-page.dart';
import 'package:bel_gomlaa/cart-pages/payment-page.dart';
import 'package:bel_gomlaa/sign-pages/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAddressPage extends StatefulWidget {
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  int _selectedTextIndex = 0;

  String? option1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text('Delivery',
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
          child: Column(
              children: [
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(

                        color: Color(0xffDBB6E4),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Delivery',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 100,),
                    DecoratedBox(
                      decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 35,),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: Text('Add Delivery Address',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,

                          color: Colors.black,
                        ),
                      ),
                    )
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                    hintText: 'City',
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right:10),
                  child: CustomTextField(
                    hintText: 'Street name/number',
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right:10),
                  child: CustomTextField(
                    hintText: 'Building number',
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right:10),
                  child: CustomTextField(
                    hintText: 'Apartment number',
                  ),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right:10),
                  child: CustomTextField(
                    hintText: 'Floor number',
                  ),
                ),


                SizedBox(height: 30),
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
                          MaterialPageRoute(builder: (context) => DeliveryPage()));

                      print('Save');
                    },
                    child: Text('Save',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18),),
                  ),
                ),
              ]
          ),
        )

    );
  }
}