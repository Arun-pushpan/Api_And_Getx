
import 'package:api_using_getx/model/data_Model.dart';
import 'package:api_using_getx/services/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class DataController extends GetxController{
//1 create instance variable
var datamodel= <DataModel>[].obs;
var loading =true.obs;

//2 create instance of getservice
  getData() async{
    loading.value = true;
    var data = await DataService().getServices();
    try{
      // var data = await DataService().getServices();

      //3  check condition
      if(data!= null){
        datamodel.value =data;
        loading.value =false;
      }
    }catch(e){
      Get.snackbar("title", "$e");
      loading.value = false;

    }
}
void onInit(){
    getData();
    super.onInit();
}
}