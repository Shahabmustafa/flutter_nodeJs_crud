import 'dart:convert';
import 'package:http/http.dart' as http;

class Api{

  static const String baseURL = "http://192.168.10.4/api/";

  static addPerson(Map pdata)async{
    print("add data $pdata");
   try{
     final res = await http.post(
       Uri.parse(baseURL + "add_person"),
       body: pdata,
     );

     print("responde ${res.statusCode}");
     print("responde ${res.body}");

     if(res.statusCode == 200){
       var data = jsonDecode(res.body.toString());
       print(data);
     }else{
       print("Your data not add");
     }
   }catch(e,s){
     // print("Error : $e");
     // print("Error : $s");
   }
  }
}