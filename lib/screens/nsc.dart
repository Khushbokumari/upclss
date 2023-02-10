import 'package:flutter/material.dart';
// import 'package:untitled7/screens/signup.dart';
// import 'package:untitled7/mongo_dart/db/database.dart';
import '../mongo_dart/db/databse.dart';
import '../mongo_dart/mongodatabase.dart';
// import '../widgets/widgets.dart';
import 'package:mongo_dart/mongo_dart.dart'as M;
import 'dart:ui';
// import 'package:untitled7/main.dart';

import '../widget/bakgroundimage.dart';
import 'loginpage.dart';
class nsc extends StatefulWidget {
  const nsc({Key? key}) : super(key: key);

  @override
  State<nsc> createState() => _nscState();
}

// ignore: camel_case_types
class _nscState extends State<nsc> {
  var nameController = new TextEditingController();
  var addressController = new TextEditingController();
  var mobileController = new TextEditingController();
  var pwdController = new TextEditingController();
  var divisionController = new TextEditingController();
  var father_nameController = new TextEditingController();
  var dobController = new TextEditingController();
  var aadharController = new TextEditingController();
  var bankController = new TextEditingController();
  var bank_accController = new TextEditingController();
  var ifscController = new TextEditingController();
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
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginPage()));
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
                // SizedBox(height: 00,),
                Column(
                  children: [
                    SingleChildScrollView(
                      reverse: true,

                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset('assets/i.png',height: 50,width: 350,alignment: Alignment.center,),
                          SizedBox(height: 0,),
                          Container(width: 300,
                            child: Text('Name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,




                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 30,
                              child: TextFormField(scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom ),
                                controller: nameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Name ',
                                  hintText: 'Enter Name here',
                                ),
                                autofocus: false,
                              )

                          ),
                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Address',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 40,
                              child: TextFormField(
                                scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    controller: addressController,
                                    decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Address',
                                  hintText: 'Enter Address',
                                ),
                                autofocus: false,
                              )

                          ),
                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Mobile No',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 40,
                              child: TextFormField(
                                controller: mobileController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Mobile No ',
                                  hintText: 'Enter Mobile No',
                                ),
                                autofocus: false,
                              )

                          ),



                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Password',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 40,

                            child: TextFormField(
                              scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                  controller: pwdController,


                                  decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Password ',
                                hintText: 'Enter Password ',
                                contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                                floatingLabelBehavior: FloatingLabelBehavior.always,

                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: Theme.of(context).primaryColorDark,

                                  ),
                                  onPressed: (){},

                                ),
                              ),
                              autofocus: false,

                            ),

                          ),
                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Division',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 35,
                              child: TextFormField(
                                scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                controller: divisionController,

                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Division ',
                                  hintText: 'Enter Division here',
                                ),
                                autofocus: false,
                              )

                          ),
                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Father Name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 35,
                              child: TextFormField(
                                scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                controller: father_nameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Father Name ',
                                  hintText: 'Enter Father Name',
                                ),
                                autofocus: false,
                              )

                          ),
                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Date Of Birth',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 40,
                              child: TextFormField(
                                scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                controller: dobController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Date Of Birth ',
                                  hintText: 'Enter Date Of Birth',
                                ),
                                autofocus: false,
                              )

                          ),
                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Aadhar No',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 40,
                              child: TextFormField(
                                scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                controller: aadharController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Aadhar No ',
                                  hintText: 'Enter Aadhar No',
                                ),
                                autofocus: false,
                              )

                          ),
                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Bank Name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 40,
                              child: TextFormField(
                                scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                controller: bankController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Bank Name ',
                                  hintText: 'Enter Bank Name',
                                ),
                                autofocus: false,
                              )

                          ),
                          SizedBox(height: 2,),
                          Container(width: 300,
                            child: Text('Bank Account No',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 40,
                              child: TextField( scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                controller: bank_accController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Bank Account No ',
                                  hintText: 'Bank Account No',
                                ),
                                autofocus: false,
                              )

                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,
                            child: Text('IFSC Code',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11



                              ),
                            ),


                          ),
                          SizedBox(height: 5,),
                          Container(width: 300,height: 40,
                              child: TextFormField(
                                scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.top),
                                controller: ifscController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'IFSC Code ',
                                  hintText: 'Enter Bank IFSC Code',
                                ),
                                autofocus: false,
                              )

                          ),




                        ],
                      ),
                    )
                  ],
                )


              ],

            ),
          ),
        ),
      ],
    );
  }
  Future<void>_insertData(
      String name,
      String address ,
      String mobile,
      String pwd,
      String division ,
      String father_name,
      String dob,
      String aadhar ,
      String bank,
      String bank_acc,
      String ifsc)async{
    // var M;
    var _id=M.ObjectId();
    final data=MongoDBModel(
        id:_id,name:name,mobile:mobile,pwd:pwd,division:division,father_name:father_name,
        dob:dob,aadhar:aadhar,bank:bank,bank_acc:bank_acc,ifsc:ifsc, address: address
    );
    var result=await MongoDatabase.Insert(data);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Inserted ID" + _id.$oid),));

  }
  void _clearAll(){
    nameController.text="";
    addressController.text="";
    mobileController.text="";
    divisionController.text="";
    father_nameController.text="";
    dobController.text="";
    aadharController.text="";
    bankController.text="";
    bank_accController.text="";
    ifscController.text="";

  }

}



// class ChangeHanset extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }