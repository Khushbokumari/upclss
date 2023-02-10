import 'package:flutter/material.dart';
// import 'package:untitled7/screens/billreceipt.dart';
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
class paybillreceipt extends StatelessWidget {


  paybillreceipt({Key? key}) : super(key: key);

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
                //add new !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




              ],

            ),
          ),
        ),
      ],
    );
  }


}