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
import 'billreceipt.dart';
class meterread extends StatelessWidget {


  meterread({Key? key}) : super(key: key);

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
                      // SizedBox(height: 0,),
                      Text('Uttarakhand Power Corporation Ltd.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.bold

                        ),),

                      // SizedBox(height: 5,),
                      SizedBox(height: 30,),

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
                                {},
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  // backgroundColor: Colors.black, // Background Color
                                ),
                                child: const Text(
                                  'View Your Last Month Meter Record ',textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            //
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(width: 300,
                        child: Text('Consumer Number',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,fontWeight: FontWeight.bold



                          ),
                        ),


                      ),
                      SizedBox(height: 15,),
                      Container(width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter Consumer No ',
                              hintText: 'Enter Consumer No',
                            ),
                            autofocus: false,
                          )

                      ),
                      SizedBox(height: 20,),
                      Container(width: 300,
                        child: Text('Registered Mobile No',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,fontWeight: FontWeight.bold



                          ),
                        ),


                      ),
                      SizedBox(height: 15,),
                      Container(width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter Mobile ',
                              hintText: 'Enter Mobile No',
                            ),
                            autofocus: false,
                          )

                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding:EdgeInsets.fromLTRB(30, 10, 40, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            TextButton(
                              onPressed: ()=>{
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => billreceipt()))

                              },
                              style: TextButton.styleFrom(
                                primary: Colors.black54,
                                backgroundColor: Colors.black, // Background Color
                              ),


                              child: Text('View Bill',textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  // backgroundColor: Colors.grey
                                ),),)

                          ],
                        ),
                      ),








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