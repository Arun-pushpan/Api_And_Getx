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
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 20,
        backgroundColor: Colors.yellow.shade400,
        centerTitle: true,
        elevation: 20,
        title: Text("API AND GETX ",style: TextStyle(color: Colors.black),)
        ,
      ),

      body: Container(
        color: Colors.grey.shade500,
        child: Obx((){
          return ListView.builder(
              itemCount: controller.datamodel.length??0,
              itemBuilder: (c,i){
                final data =controller.datamodel[i];
                return Column(
                  children: [
                    SizedBox(height: 20,),
                Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Container(
                               color: Colors.transparent,
                               width: 300,
                               height: 250,
                               child: Image.network(data.image.toString()),

                             ),
                           ],
                         ),
                    SizedBox(height: 20,),
                    Text(data.category.toString()??"",style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w600,color: Colors.black),),SizedBox(height: 20,),
                    Text(data.title.toString()??"",style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w600,color: Colors.black)),SizedBox(height: 20,),
                    Text(data.price.toString()??"",style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w600,color: Colors.black)),SizedBox(height: 20,),
                    Text(data.description.toString()??"",style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w600,color: Colors.black)),SizedBox(height: 20,),
                    Divider(height: 20,thickness: 4,color: Colors.black,),SizedBox(height: 20,),
                  ],
                );

              });
        }),
      ),

      //body: Obx((){
      //   //3 store data value
      //   var data = controller.datamodel.value;
      //   //4  display data
      //
      //   return SingleChildScrollView(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //
      //          Row(
      //            mainAxisAlignment: MainAxisAlignment.center,
      //            children: [
      //              Container(
      //                color: Colors.transparent,
      //                width: 400,
      //                height: 250,
      //                child: Image.network(data.image.toString()),
      //
      //              ),
      //            ],
      //          ),
      //         SizedBox(height: 10,),
      //         Text(data.category??"",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      //         SizedBox(height: 10,),
      //         Text(data.title??"",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      //         SizedBox(height: 10,),
      //         Text("Price:\n${data.price.toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      //         SizedBox(height: 10,),
      //         Text("Description:\n${data.description}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      //
      //       ],
      //     ),
      //   );
      //
      // }
      // )
    );
  }
}
