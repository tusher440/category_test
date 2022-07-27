import 'package:http/http.dart'as http;
import 'dart:convert'as convert;

import 'model_category.dart';

class ApiDataService{
  Future<ProductPage> getCategoriesService() async{
    Map<String,dynamic>? result;
    try{
      String url= 'https://bppshops.com/api/bs/category_view';
      http.Response response= await http.get(Uri.parse(url));
      print(response.body);
      if(response.statusCode==200){

        result=convert.jsonDecode(response.body);
        return ProductPage.fromJson(result!);
      }
    }catch(e){
      print(e.toString());
    }
    return ProductPage.fromJson(result!);
  }


}