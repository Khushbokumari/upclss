import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'constent.dart';

import '../mongodatabase.dart';
 // import 'constent.dart';

class MongoDatabase{
  static var db,collection;
  static connect()async{
    db=await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    var status=db.serverStatus();
    print(status);
     collection=db.collection(USER_COLLECTION);}
     static Future<String> Insert(MongoDBModel data)async{
      try{
        var result = await collection.insertAll(data.toJson());
        if(result.isSuccess){
          return "Data Inserted";

        }
        else {
          return "Something Wrong While inserting data.";
        }

      } catch(e){

        print(e.toString());
        return e.toString();
      }


    // print(await collection.find().toList());
    // await collection.insertMany([
    //   {
    //     "name":"hello",
    //     "address":"tn",
    //     "mobile":"098765432",
    //     "pwd":"nmkniinnnnjn",
    //     "division":"jnjjnkjnjknk",
    //     "father_name":"njnjnjbnjnkj",
    //     "data":"tfytftyfyu",
    //     "aadhar":"8898989898995443",
    //     "bank":"98876543211",
    //     "bank_acc":"98765456777",
    //     "ifcs":"CDN0072931"
    //   },
    //   {
    //     "name":"hi",
    //     "address":"dgfh",
    //     "mobile":"09876964322",
    //     "pwd":"nmkniinnnnjnhjjk",
    //     "division":"jnjjnkjnjknkbnmmm",
    //     "father_name":"njnjnjbnjnkjghhjkkhjk",
    //     "data":"tfytftyfyutuyuykuku",
    //     "aadhar":"8898989898995443hjhjhhj",
    //     "bank":"98876543211gjhkj",
    //     "bank_acc":"987654567770998",
    //     "ifcs":"CDN0072931677"
    //   }
    // ]
    //
    // );
    // print(await collection.find().toList());
    //await collection.updateMany(where.eq('name','ma'),modify.set('name','Max P'));  //**********updating value
    // print(await collection.find().toList());
    // await collection.deleteMany({'name','ma'});//deleting data


  }
}