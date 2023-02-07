import 'package:flutter/material.dart';

 class DataModel {
  //create variables
  int? id;
  double? price;
  String? title;
   String?  description;
   String? category;
  String? image;

  //create constructor
  DataModel({
   this.category,
   this.description,
   this.id,
   this.image,
   this.price,
   this.title,
  });
  //create fromjson, read data from the api
  factory DataModel.fromJson(Map <String,dynamic>json){
   return DataModel(
   id: json["id"],
   title: json["title"],
   description: json["description"],
   category: json['category'],
   image: json['image'],
   price: json["price"]
   );
  }
  //create Tojson.write data
 Map<String,dynamic> toJson(){
   return {
    "id":id,
    "title":title,
    "description":description,
    "category":category,
    "image":image,
    "price":price,
   };

 }
 }