import 'package:flutter/material.dart';
import 'package:untitled10/screens/payment_bill.dart';
// import 'package:upcl_final/screens/payment_bill.dart';
// import 'package:untitled7/screens/billreceipt.dart';
// import 'package:untitled7/screens/payment_bill.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart';
// import 'package:untitled7/screens/signup.dart';
// import 'package:flutter/src/rendering/box.dart';
// import 'package:untitled7/screens/loginpage.dart';
// import 'package:untitled7/screens/signup.dart';
// import '../widgets/widgets.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'dart:ui';
import 'dart:math';

import '../widget/bakgroundimage.dart';
class billpay extends StatelessWidget {


  billpay({Key? key}) : super(key: key);

  // get builder => ;


  @override
  Widget build(BuildContext context)
  {
    return Stack(

      children: [
        BackgroundImage(),
        Scaffold(


          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            reverse: true,

            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
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

                          //


                        ],

                      ),


                    ),


                  ],

                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height:20,),
                      Image.asset('assets/11.png',height: 200,width: 250,alignment: Alignment.center,),
                       SizedBox(height: 1,),
                      Text('Uttarakhand Power Corporation Ltd.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 43,
                            fontWeight: FontWeight.bold

                        ),),
                      SizedBox(height:20,),
                      Text('Consumer No:2152003796',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold

                        ),),
                      SizedBox(height: 20,),
                      Container(alignment: Alignment.center,
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
                        // color: Colors.black54,

                        child: Column(
                          children: [
                            SizedBox(height: 20,),

                            GestureDetector(
                              child: Container(
                                alignment: Alignment.center,
                                width: 300,

                                child: Padding(
                                    padding: EdgeInsets.all(5.0,),
                                    child:TextButton(
                                      onPressed: ()
                                      {},
                                      style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor: Colors.black12, // Background Color
                                      ),
                                      child: const Text(
                                        'Quick Bill Payment ',textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  //
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(width: 300,

                              // color: Colors.transparent,
                              child: Text(' Enter Consumer Number',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,fontWeight: FontWeight.bold



                                ),
                              ),


                            ),
  SizedBox(height: 25,),
  Container(width: 300,

      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide (color: Colors.white
              )
          ),
          labelText: 'Enter Consumer No ',
          hintText: 'Enter Your CA No',
        ),
        autofocus: false,
      )

  ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:EdgeInsets.fromLTRB(10, 10, 38, 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  TextButton(
                                    onPressed: ()=>{
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => paybillreceipt()))

                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black54,
                                      backgroundColor: Colors.black, // Background Color
                                    ),


                                    child: Text('Submit',textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                        // backgroundColor: Colors.grey
                                      ),),)

                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(width: 300,
                              child: Text('Click here for Pay Estimate/Miscellanous charges Suvidha',textAlign: TextAlign.center,

                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 16,fontWeight: FontWeight.bold



                                ),
                              ),)


                          ],
                        ),
                      ),

                      // SizedBox(height: 5,),









                    ],

                  ),
                ),




              ],

            ),
          ),
        ),
      ],
    );
  }


}