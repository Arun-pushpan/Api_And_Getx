
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart'as http;

import '../model/data_Model.dart';
class DataService{
  //1 get url
  var url="https://fakestoreapi.com/products";
  // 2 create get function
  Future<List<DataModel>?>getServices()async{
    var response = await http.get(Uri.parse(url));
    //3 check condition
    if(response.statusCode ==200){
      //4 json decode
      var data =await jsonDecode(response.body);
      return List<DataModel>.from(data.map((e)=>DataModel.fromJson(e)));
    }else{
      return null;
    }
  }
}
