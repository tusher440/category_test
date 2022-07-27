import 'package:flutter/cupertino.dart';
import 'package:flutter_coding_test/category_provider/model_category.dart';
import 'http_category.dart';
import 'model_category.dart';


class CategoryProvider extends ChangeNotifier{
  List<ProductPage>?categoryList=[];
  bool isLoading =false;
  getCategoryProvider()async{
    isLoading =true;
    final data =await ApiDataService().getCategoriesService();
    categoryList = data.image.toString() as List<ProductPage>?;
    //categoryList=data.ProductPage!;
    print(categoryList!.length);
    isLoading =false;
    notifyListeners();

  }
}
