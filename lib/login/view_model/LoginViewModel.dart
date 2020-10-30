import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app_shop/login/model/User.dart';
import 'package:flutter_app_shop/login/model/code_entity.dart';
import 'package:flutter_app_shop/login/model/login_entity.dart';
import 'package:flutter_app_shop/login/view/LoginView.dart';
import 'package:flutter_app_shop/utils/HttpUtils.dart';
import 'package:flutter_app_shop/utils/LogUtis.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginViewModel{
  LoginView _view;

  LoginViewModel(this._view);
  void sendCode({String phoneNum})async{
    FormData formData = new FormData.fromMap({"mobile": phoneNum,"event":"mobilelogin"});

    Response  res=await  HttpUtils().sendData(url: "sms/send",data: formData);
    LogUtils.d(res.data);
    if(res.data["code"]==1){
      CodeEntity entity =new CodeEntity().fromJson(res.data);
      _view.sendCodeSuccess(entity.msg);

    }else{
      _view.error(res.data["msg"]);

    }

  }

  void login({String phoneNum,String code})async{
    FormData formData = new FormData.fromMap({"mobile": phoneNum,"captcha":code});
    print('login ${formData}');

    Response  res=await  HttpUtils().sendData(url: "user/mobilelogin",data: formData);
    print('login ${jsonEncode(res.data)}');

    if(res.data["code"]==1){
      LoginEntity entity =new LoginEntity().fromJson(res.data);

        Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
        final SharedPreferences prefs = await _prefs;
        prefs.setString("user",jsonEncode(res.data));

        new User().entity=entity;
        _view.loginSuccess(entity.msg);

    }else{
      _view.error(res.data["msg"]);

    }

  }
  void reg(){

  }

}