import 'package:dio/dio.dart';
import 'package:flutter_app_shop/detail/DetailView.dart';
import 'package:flutter_app_shop/utils/HttpUtils.dart';
import 'package:flutter_app_shop/utils/LogUtis.dart';

import 'article_list_entity.dart';

class DetailViewModel{
  DetailView _view;

  DetailViewModel(this._view);
  void getArticle({int shoplist_id})async{
    FormData formData = new FormData.fromMap({"shoplist_id": shoplist_id});
    LogUtils.d(formData.toString());
    Response  res=await  HttpUtils().sendData(url: "index/getArticleList",data: formData);
    if(res.data["code"]==1){
      ArticleListEntity entity =ArticleListEntity().fromJson(res.data);

      _view.getArticleListSuccess(entity);

    }else{
      _view.error(res.data["msg"]);

    }
  }
}