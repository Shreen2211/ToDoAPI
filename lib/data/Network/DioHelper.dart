import 'package:dio/dio.dart';
import 'package:todo_app_api/data/Network/endPoint.dart';
class dioHelper{
  static Dio? dio;
  static void init(){
    dio=Dio(
      BaseOptions(
        baseUrl: End_Piont.baseURL,
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type':'application/json',
          'Accept':'application/json',
        }
      )
    );
  }
  static Future <Response?> get({required String endpoint,String? token,Map<String,dynamic>?body})async{
    dio?.options.headers = {
      "Authorization": "Bearer $token",
    };
    try{
      Response? res=await dio?.post(endpoint,data: body);
      return res;
    }catch(e){
      rethrow;
    }
  }
  static Future <Response?> getAll({required String endpoint,String? token,Map<String,dynamic>?body})async{
    dio?.options.headers = {
      "Authorization": "Bearer $token",
    };
    try{
      Response? res=await dio?.get(endpoint,);
      return res;
    }catch(e){
      rethrow;
    }
  }

}