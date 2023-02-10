import 'package:flutter/material.dart';
// import 'package:untitled7/screens/signup.dart';
// import 'package:untitled7/mongo_dart/db/database.dart';
// import '../mongo_dart/db/databse.dart';
// import '../mongo_dart/mongodatabase.dart';
// import '../widgets/widgets.dart';
// import 'package:mongo_dart/mongo_dart.dart'as M;
import 'dart:ui';
// import 'package:untitled7/main.dart';

import '../widget/bakgroundimage.dart';
// import 'loginpage.dart';
class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}

// ignore: camel_case_types
class _calState extends State<cal> {
  _calState(){
    _selectedValue=_menulist[0];
    _selectedVal=_menlist[0];
    _selectedVar=_melist[0];
    _selectedValues=_mlist[0];
    _selectedValu=_mslist[0];


  }
  String?_selectedValue="LT";
  String?_selectedVal="KW";
  String?_selectedVar="DOMESTIC";
  String?_selectedValues="OVERHEAD";
  String?_selectedValu="null";

  final _menulist=[" H T "," L T "];
  final _menlist=["KW","KVA","HP"];
  final _melist=["Domestic","Non Domestic","Public lighting","Snowbound",];
  final _mlist=["OVERHEAD","UNDERGROUND"];
  final _mslist=["--------","null"];

  @override

  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          resizeToAvoidBottomInset: true,
          // resizeToAvoidBottomPadding: false,

          // resizeToAvoidBottomInset : false,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(

            child: Column(
              children:<Widget> [
                SizedBox(height: 25,),
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
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 10, 50),),

                          Image.asset('assets/11.png',height: 100,width: 150,alignment: Alignment.topLeft,),
                          Padding(padding:EdgeInsets.fromLTRB(0, 10, 10, 50),),

                          Text('UPCL',textAlign: TextAlign.center,style:TextStyle(
                              fontSize: 25,
                              color: Colors.white
                          ),),
                          Padding(padding:EdgeInsets.fromLTRB(90, 10, 10, 60),),
                          IconButton(onPressed:(){
                            // Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginPage()));

                          },
                              icon:Icon(
                                Icons.check,size: 30,
                                color: Colors.white,
                              ))
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
                SingleChildScrollView(

                  child: Container(
                  height: 690,width: 370,color: Colors.black54,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(height: 50,width: 340,color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.calculate_sharp,color: Colors.white,size: 33,),
                                Text("Fixed Cost Estimation For New Connection",textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                            ),

                          ),



                        ],
                      ),
                      SizedBox(height:20,),
                      Container(

                        child: Text("Connection Type",textAlign: TextAlign.left,style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.white38,fontSize: 18),),
                      ),
                      // SizedBox(height: 5,),

                      Container(width: 400,height: 60,
                          child: DropdownButtonFormField(
                            value: _selectedValue,
                            // isExpanded: true,
                            items: _menulist.map((e) =>DropdownMenuItem(child:Text(e,
                              textAlign:TextAlign.center,style: TextStyle(
                                  fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                              ),),value: e,)).toList(),
                            onChanged: (val){
                              setState(() {
                                _selectedValue=val as String;
                                // controller: divisionController;

                              });

                            },
                            icon: const Icon(Icons.arrow_drop_down),

                          )

                      ),
                      // SizedBox(height:5,),
                      Container(

                        child: Text("Load Desired",textAlign: TextAlign.left,style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.white38,fontSize: 18),),
                      ),
                      // SizedBox(height: 5,),

                      Container(width: 400,height: 60,
                          child: DropdownButtonFormField(
                            value:  _selectedVal,
                            // isExpanded: true,
                            items:  _menlist.map((e) =>DropdownMenuItem(child:Text(e,
                              textAlign:TextAlign.center,style: TextStyle(
                                  fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                              ),),value: e,)).toList(),
                            onChanged: (val){
                              setState(() {
                                _selectedVal=val as String;
                                // controller: divisionController;

                              });

                            },
                            icon: const Icon(Icons.arrow_drop_down),

                          )

                      ),
                      // SizedBox(height:5,),
                      Container(

                        child: Text("Main Category",textAlign: TextAlign.left,style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.white38,fontSize: 18),),
                      ),
                      // SizedBox(height: 5,),

                      Container(width: 400,height: 60,
                          child: DropdownButtonFormField(
                            value:_selectedVar,
                            // isExpanded: true,
                            items: _melist.map((e) =>DropdownMenuItem(child:Text(e,
                              textAlign:TextAlign.center,style: TextStyle(
                                  fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                              ),),value: e,)).toList(),
                            onChanged: (val){
                              setState(() {
                                _selectedVar=val as String;
                                // controller: divisionController;

                              });

                            },
                            icon: const Icon(Icons.arrow_drop_down),

                          )

                      ),
                      // SizedBox(height:5,),
                      Container(

                        child: Text("Sub Category",textAlign: TextAlign.left,style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.white38,fontSize: 18),),
                      ),
                      // SizedBox(height: 5,),

                      Container(width: 400,height: 60,
                          child: DropdownButtonFormField(
                            value: _selectedValu,
                            // isExpanded: true,
                            items: _mslist.map((e) =>DropdownMenuItem(child:Text(e,
                              textAlign:TextAlign.center,style: TextStyle(
                                  fontSize: 18,color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),value: e,)).toList(),
                            onChanged: (val){
                              setState(() {
                                _selectedValu=val as String;
                                // controller: divisionController;

                              });

                            },
                            icon: const Icon(Icons.arrow_drop_down),

                          )

                      ),
                       SizedBox(height: 5,),
                      Container(
                        child:Text("Length of extension in Meters From Desired Connecting Pole",textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white38),),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: TextFormField(
                            scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                            // controller: divisionController,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(),

                            ),
                            autofocus: false,
                          ),
                      ),SizedBox(height: 15,),
                      Container(
                        child:Text("Service Line Desired",textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white38),),
                      ),
                      // SizedBox(height: 15,),
                      Container(width: 400,height: 60,
                          child: DropdownButtonFormField(
                            value: _selectedValues,
                            // isExpanded: true,
                            items: _mlist.map((e) =>DropdownMenuItem(child:Text(e,
                              textAlign:TextAlign.center,style: TextStyle(
                                  fontSize: 18,color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),value: e,)).toList(),
                            onChanged: (val){
                              setState(() {
                                _selectedValues=val as String;
                                // controller: divisionController;

                              });

                            },
                            icon: const Icon(Icons.arrow_drop_down),

                          )

                      ),
                      // SizedBox(height: 10,),
                      Padding(
                        padding:EdgeInsets.fromLTRB(20, 10, 30, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            TextButton(
                              onPressed: ()=>{
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => cal()))

                              },
                              style: TextButton.styleFrom(
                                primary: Colors.black54,
                                backgroundColor: Colors.black, // Background Color
                              ),


                              child: Text('Submit',textAlign: TextAlign.center,
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
                )
                // SizedBox(height: 00,),



              ],

            ),
          ),
        ),
      ],
    );
  }


}



// class ChangeHanset extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }