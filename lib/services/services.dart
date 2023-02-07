
import 'dart:convert';

import 'package:http/http.dart'as http;

import '../model/data_Model.dart';
class DataService{
  //1 get url
  var url="https://fakestoreapi.com/products/1";
  // 2 create get function
  Future<DataModel?>getServices()async{
    var response = await http.get(Uri.parse(url));
    //3 check condition
    if(response.statusCode ==200){
      //4 json decode
      var data =await jsonDecode(response.body);
      return DataModel.fromJson(data);
    }else{
      return null;
    }
  }
}
