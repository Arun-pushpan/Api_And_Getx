import 'package:api_using_getx/view/home.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Dj());
}
class Dj extends StatelessWidget {
  const Dj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey,
        backgroundColor: Colors.grey,

      ),
      debugShowCheckedModeBanner: false,
      home:Home() ,
    );

  }
}
