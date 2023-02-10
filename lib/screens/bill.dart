import 'package:flutter/material.dart';
import 'package:untitled10/screens/paybill.dart';
import 'package:untitled10/screens/viewbill.dart';
// import 'package:upcl_final/screens/paybill.dart';
// import 'package:untitled7/screens/paybill.dart';
// import 'package:untitled7/screens/viewbill.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart';

import '../widget/bakgroundimage.dart';


import 'dart:ui';
import 'dart:math';

import 'nsccalci.dart';
class bill extends StatelessWidget {


  bill({Key? key}) : super(key: key);

  // get builder => ;


  @override
  Widget build(BuildContext context)
  {
    return Stack(

      children: [
        BackgroundImage(),
        Scaffold(

          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SafeArea(

            child: Column(
              children: <Widget>[
                // SizedBox(height: 5,),
                Row(

                  children: [
                    Container(
                      height: 48,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(

                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 50),),

                          Image.asset('assets/11.png', height: 100,
                            width: 150,
                            alignment: Alignment.topLeft,),
                          Padding(padding: EdgeInsets.fromLTRB(0, 10, 10, 50),),

                          Text('UPCL', textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),),
                          Padding(padding: EdgeInsets.fromLTRB(90, 10, 10,
                              60),),
                          Transform.rotate(angle: 90 * pi / 180,
                              child: IconButton(onPressed: () {
                                // Navigator.push(context,MaterialPageRoute(builder: (context)=>const signup()));
                              },
                                  icon: Icon(
                                    Icons.keyboard_control_sharp, size: 30,
                                    color: Colors.white,

                                  ))
                          )

                          // Icon(
                          //   Icons.check,size: 30,
                          //   color: Colors.white,
                          //
                          //   //Refresh Icon
                          // ),


                        ],

                      ),


                    ),


                  ],

                ),
                SizedBox(height: 20,),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height:5,),
                      Image.asset('assets/11.png',height: 180,width: 250,alignment: Alignment.center,),
                      // SizedBox(height: 0,),
                      Text('Uttarakhand Power Corporation Ltd.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.bold

                        ),),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(onPressed: ()=>{
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()))
                        //signupscreen
                      }, child: Text(
                        'Bill & Payments',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),),
                      // SizedBox(height: 5,),
                      SizedBox(height: 06,),

                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 350,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors:[
                                    // Color(0xFF000000),

                                    // Color(0xFA8a4387),
                                    Colors.black12,
                                    Colors.black54
                                    // Color(0xFF8a2387),
                                    // Color(0xFF000000),


                                  ]
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0,),
                            child:TextButton(
                              onPressed: ()
                              {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => viewbill()));
                              },
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                // backgroundColor: Colors.black, // Background Color
                              ),
                              child: const Text(
                                'View Your Bill ',
                                style: TextStyle(fontSize: 28),
                              ),
                            )
                          //
                          ),
                        ),
                      ),
                      SizedBox(height: 06,),

                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors:[
                                    Colors.black12,
                                    Colors.black54


                                  ]
                              )
                          ),
                          child: Padding(
                              padding: EdgeInsets.all(10.0,),
                              child:TextButton(
                                onPressed: ()
                                {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => billpay()));
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  // backgroundColor: Colors.black, // Background Color
                                ),
                                child: const Text(
                                  'Pay Your Bill ',
                                  style: TextStyle(fontSize: 28),
                                ),
                              )
                            //
                          ),
                        ),
                      ),
                      SizedBox(height: 06,),

                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors:[
                                    // Color(0xFF000000),

                                    // Color(0xFA8a4387),
                                    Colors.black12,
                                    Colors.black54


                                  ]
                              )
                          ),
                          child: Padding(
                              padding: EdgeInsets.all(10.0,),
                              child:TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  // backgroundColor: Colors.black, // Background Color
                                ),
                                child: const Text(
                                  'NSC  Payment',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 28),
                                ),
                              )
                            //
                            //
                          ),
                        ),
                      ),
                      SizedBox(height: 06,),

                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors:[
                                    // Color(0xFF000000),

                                    // Color(0xFA8a4387),
                                    Colors.black12,
                                    Colors.black54


                                  ]
                              )
                          ),
                          child: Padding(
                              padding: EdgeInsets.all(10.0,),
                              child:TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  // backgroundColor: Colors.black, // Background Color
                                ),
                                child: const Text(
                                  textAlign: TextAlign.center,
                                  'Last 3 Month Statements',
                                  style: TextStyle(fontSize: 28),
                                ),
                              )
                            //
                          ),
                        ),
                      ),




                    ],

                  ),
                )



              ],

            ),
          ),
        ),
      ],
    );
  }


}