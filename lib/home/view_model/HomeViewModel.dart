import 'package:dio/dio.dart';
import 'package:flutter_app_shop/generated/json/home_entity_helper.dart';
import 'package:flutter_app_shop/home/model/home_entity.dart';
import 'package:flutter_app_shop/home/model/shop_entity.dart';
import 'package:flutter_app_shop/home/view/HomeView.dart';
import 'package:flutter_app_shop/utils/HttpUtils.dart';
import 'package:flutter_app_shop/utils/LogUtis.dart';

class HomeViewModel{
  HomeView _view;

  HomeViewModel(this._view);

  void init()async{
    Response  res=await  HttpUtils().sendData(url: "index/indexAll");
    LogUtils.d(res.data);
    if(res.data["code"]==1){
      HomeEntity entity=HomeEntity().fromJson(res.data);
      _view.initSuccess(entity);
    }else{
      _view.err(res.data["msg"]);
    }

  }

  void getShop({shoplist_id})async{
FormData formData = new FormData.fromMap({"shoplist_id": shoplist_id});

Response  res=await  HttpUtils().sendData(url: "index/getShop",data: formData);
    LogUtils.d(res.data);
    if(res.data["code"]==1){
      ShopEntity entity=ShopEntity().fromJson(res.data);
      _view.getShopSuccess(entity);
    }else{
      _view.err(res.data["msg"]);
    }

  }
}