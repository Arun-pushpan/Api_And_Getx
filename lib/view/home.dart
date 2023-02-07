import 'package:api_using_getx/controller/datacontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //1 create instanceee for controller
  final controller =Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: Text("API AND GETX ",style: TextStyle(color: Colors.black),)
        ,
      ),
      body: Obx((){
        //3 store data value
        var data = controller.datamodel.value;
        //4  display data

        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     color: Colors.transparent,
                     width: 400,
                     height: 250,
                     child: Image.network(data.image.toString()),

                   ),
                 ],
               ),
              SizedBox(height: 10,),
              Text(data.category??"",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 10,),
              Text(data.title??"",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 10,),
              Text("Price:\n${data.price.toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 10,),
              Text("Description:\n${data.description}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),


              // Text(data.category??""),
              // Text(data.title??""),
              // Text(data.price.toString()),
              // Text(data.description??""),
              //  SizedBox(height: 50,),
              //  Container(
              //    width: 150,
              //    height: 150,
              //    child: Image.network(data.image.toString()),
              //
              //  )
            ],
          ),
        );

      }
      )
    );
  }
}
