import 'package:flutter/material.dart';
import 'package:untitled10/screens/service.dart';
// import 'package:upcl_final/screens/service.dart';

// import 'dart:ui';
import 'dart:math';

import '../widget/bakgroundimage.dart';
import 'bill.dart';
import 'complaints.dart';
import 'meter.dart';
import 'nsc_conn.dart';
// import 'loginpage.dart';
class dashboard extends StatelessWidget {
  // List<String> events=[
  //   "My Account",
  //   "Bill & Payments",
  //   "My Power Consumption",
  //   "My Meter Reading",
  //   "My Complaints",
  //   "Service Request",
  //   "Saving Tips",
  //   "New Service Connection"
  //
  // ];
  dashboard({Key? key}) : super(key: key);

  // get builder => ;


  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        BackgroundImage(),
        Scaffold(

          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SafeArea(

            child: Column(
              children: <Widget>[
                SizedBox(height: 5,),
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
                Container(
                  margin: const EdgeInsets.only(top: 10.0),


                  child: GridView(
                    shrinkWrap: true,

                    padding: EdgeInsets.only(left: 20, right: 20),
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    children: [
                      Container(height: 15, decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),

                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black12,
                                Colors.black54,],),),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                            // GestureDetector(onTap: (){},),

                            Image.asset('assets/w.png', height: 70,
                              width: 150,
                              alignment: Alignment.center,),
                            TextButton(onPressed: ()=>{
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Forgetpage()))

                            },
                              child: Text('My Account',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),)




                          ],


                        ),

                      ),
                      Container(height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black12,
                                Colors.black54



                              ]
                          )
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                            // GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => bill()));},),

                            Image.asset('assets/0000.png', height: 70,
                              width: 120,
                              alignment: Alignment.center,),
                            TextButton(onPressed: ()=>{
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => bill()))

                            },
                              child: Text('Bill & Payments',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),)




                          ],


                        ),
                      ),
                      Container(height: 15, decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black12,
                                Colors.black54



                              ]
                          )
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                            // GestureDetector(onTap: (){},),

                            Image.asset('assets/000.jpg', height: 70,
                              width: 150,
                              alignment: Alignment.center,),
                            TextButton(onPressed: ()=>{
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Forgetpage()))

                            },
                              child: Text('My Power Consumption',textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),)




                          ],


                        ),
                      ),
                      Container(height: 15, decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black12,
                                Colors.black54


                              ]
                          )
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                            // GestureDetector(onTap: (){
                            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => meter()));
                            // },),

                            Image.asset('assets/00.png', height: 70,
                              width: 150,
                              alignment: Alignment.center,),
                            TextButton(onPressed: ()=>{
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => meter()))

                            },
                              child: Text('My Meter Reading',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),)




                          ],


                        ),),
                      Container(height: 15, decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black12,
                                Colors.black54


                              ]
                          )
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                             // GestureDetector(onTap: (){
                             //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => complaints()));
                             // },),

                            Image.asset('assets/0.jpg', height: 70,
                              width: 150,
                              alignment: Alignment.center,),
                            TextButton(onPressed: ()=>{
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => complaints()))

                            },
                              child: Text('My Complaints',
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white
                                ),),)




                          ],


                        ),),
                      Container(height: 15, decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black12,
                                Colors.black54



                              ]
                          )
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                             // GestureDetector(onTap: (){
                             //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => service()));
                             // },),

                            Image.asset('assets/34.jpg', height: 70,
                              width: 150,
                              alignment: Alignment.center,),
                            TextButton(onPressed: ()=>{
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => service()))

                            },
                              child: Text('Service Request',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),)




                          ],


                        ),),
                      Container(height: 15, decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black12,
                                Colors.black54



                              ]
                          )
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                            // GestureDetector(onTap: (){},),

                            Image.asset('assets/22.jpg', height: 70,
                              width: 150,
                              alignment: Alignment.center,),
                            TextButton(onPressed: ()=>{
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Forgetpage()))

                            },
                              child: Text('Saving Tips',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),)




                          ],


                        ),),
                      Container(height: 15, decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black12,
                                Colors.black54


                              ]
                          )
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                             // GestureDetector(onTap: (){
                             //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => nsc_conn()));
                             // },),

                            Image.asset('assets/i.png', height: 70,
                              width: 150,
                              alignment: Alignment.center,),
                            TextButton(onPressed: ()=>{
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => nsc_conn()))

                            },
                              child: Text('New Service Connection',textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white
                                ),),)




                          ],


                        ),),

                    ],
                  ),
                ),
                // SizedBox(height: 00,),
                // SingleChildScrollView(child: Expanded(child:
                //
                // ),


                // )


              ],

            ),
          ),
        ),
      ],
    );
  }
}