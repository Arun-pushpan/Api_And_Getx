
import 'package:api_using_getx/model/data_Model.dart';
import 'package:api_using_getx/services/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class DataController extends GetxController{
//1 create instance variable
var datamodel= DataModel().obs;

//2 create instance of getservice
  getData() async{
    try{
      var data = await DataService().getServices();

      //3  check condition
      if(data!= null){
        datamodel.value =data;
      }
    }catch(e){
      Get.snackbar("title", "$e");

    }
}
void onInit(){
    getData();
    super.onInit();
}
}