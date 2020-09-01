import 'package:dio/dio.dart';
import 'package:flutter_app_shop/home/model/shop_entity.dart';
import 'package:flutter_app_shop/home/shop/model/shop_list_entity.dart';
import 'package:flutter_app_shop/home/shop/view/ShopListView.dart';
import 'package:flutter_app_shop/utils/HttpUtils.dart';
import 'package:flutter_app_shop/utils/LogUtis.dart';

class ShopListViewModel{
  ShopListView _view;

  ShopListViewModel(this._view);
  void getShopList({int category_id, int page ,int limit,int status ,String title})async{
    FormData formData = new FormData.fromMap({"category_id": category_id,"page":page,"limit":limit,"title":title,"status":status});

    Response  res=await  HttpUtils().sendData(url: "index/index",data: formData);
    LogUtils.d(res.data);
    if(res.data["code"]==1){
      ShopListEntity entity=ShopListEntity().fromJson(res.data);
      if(page==1){
        _view.getShopListSuccess(entity);

      }else{
        _view.getShopListMoreSuccess(entity);
      }
    }else{
      _view.err(res.data["msg"]);
    }

  }
}