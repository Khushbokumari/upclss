import 'package:flutter/material.dart';
// import 'package:untitled7/screens/viewbill.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:http/http.dart';

import 'dart:ui';
import 'dart:math';

import '../widget/bakgroundimage.dart';
class billreceipt extends StatelessWidget {


  billreceipt({Key? key}) : super(key: key);

  // get builder => ;


  @override
  Widget build(BuildContext context)
  {
    return Stack(

      children: [
        BackgroundImage(),
        Scaffold(

          resizeToAvoidBottomInset:true,
          backgroundColor: Colors.transparent,
          body: SafeArea(

            child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Row(

                  children: [
                    Container(
                      height: 68,
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
                // SizedBox(height: 10,),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/2.png',height: 600,),


                  ],
                ),
                // SizedBox(height: 15,),
                // Container(
                //   color: Colors.black12,
                //   child: Text('Powered',textAlign: TextAlign.center,style: TextStyle(
                //       color: Colors.black54,
                //       fontSize: 15,
                //        fontWeight: FontWeight.bold,
                //
                //   ),),
                // ),
                // Container(
                //   color: Colors.black12,
                //   child: Text('By',textAlign: TextAlign.center,style: TextStyle(
                //       color: Colors.black54,
                //       fontSize: 15,
                //       fontWeight: FontWeight.bold
                //
                //   ),),
                // ),
                //
                //
                // // SizedBox(height: 15,),
                // Container(
                //   color: Colors.black12,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Image.asset('assets/f.webp',height: 40,width: 50,alignment: Alignment.centerLeft,),
                //       Text('SourceMonq Technologies Pvt Ltd',
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //           color: Colors.white38,
                //           fontSize: 13,
                //           fontWeight: FontWeight.bold
                //         ),),
                //
                //     ],
                //   ),
                //
                // ),







              ],

            ),
          ),
        ),
      ],
    );
  }


}