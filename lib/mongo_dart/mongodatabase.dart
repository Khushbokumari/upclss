import 'dart:convert';

MongoDBModel MongoDBModelFromJson(String str)=>MongoDBModel.fromJson(json.decode(str));
String mongoDBModelToJson(MongoDBModel data) => json.encode(data.toJson());

class MongoDBModel {
   final Object id;

   final String name;

   final String address;

   final String mobile;

   final String pwd;

   final String division;

   final String father_name;

   final String dob;

   final String aadhar;

   final String bank;

   final String bank_acc;

   final String ifsc;

  MongoDBModel( {
    required this.id,
    required this.name,
    required this.address,
    required this.mobile,
    required this.pwd,
    required this.division,
    required this.father_name,
    required this.dob,
    required this.aadhar,
    required this.bank,
    required this.bank_acc,
    required this.ifsc,
  });
  
  factory MongoDBModel.fromJson(Map<String,dynamic>json) =>MongoDBModel(
      id: json["id"],
      name: json["name"],
      address: json["address"],
      mobile: json["mobile"],
      pwd: json["pwd"],
      division: json["division"],
      father_name: json["father_name"],
      dob: json["data"],
      aadhar: json["aadhar"],
      bank: json["bank"],
      bank_acc: json["bank_acc"],
      ifsc: json["ifsc"]
  );

  Map<String, dynamic> toJson() =>{
    "id":id,
    "name":name,
    "address":address,
    "mobile":mobile,
    "pwd":pwd,
    "division":division,
    "father_name":father_name,
    "data":dob,
    "aadhar":aadhar,
    "bank":bank,
    "bank_acc":bank_acc,
    "ifsc":ifsc

  };
}