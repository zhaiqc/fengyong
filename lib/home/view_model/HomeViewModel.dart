import 'package:dio/dio.dart';
import 'package:flutter_app_shop/generated/json/home_entity_helper.dart';
import 'package:flutter_app_shop/home/model/home_entity.dart';
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
}