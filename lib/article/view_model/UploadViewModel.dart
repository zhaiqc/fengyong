import 'package:dio/dio.dart';
import 'package:flutter_app_shop/article/model/upload_entity.dart';
import 'package:flutter_app_shop/article/view/UploadView.dart';
import 'package:flutter_app_shop/login/model/User.dart';
import 'package:flutter_app_shop/utils/HttpUtils.dart';
import 'package:flutter_app_shop/utils/LogUtis.dart';

class UploadViewModel{
  UploadView _view;



  UploadViewModel(this._view);
  void addArticle({int shoplist_id ,String content, List<UploadEntity> images})async{
    LogUtils.d(content);

    String smallimages ="";
    Future.forEach(images, ( UploadEntity element){
      smallimages=smallimages+element.data.url+",";
    });
    FormData formData = new FormData.fromMap({"shoplist_id": shoplist_id,"content":content,"smallimages":smallimages,"token":User().entity.data.userinfo.token,"user_id":User().entity.data.userinfo.userId});
    LogUtils.d(formData.toString());
    Response  res=await  HttpUtils().sendData(url: "shop/addArticle",data: formData);
    LogUtils.d(res.data);
    if (res.data["code"]==1){
        _view.sendSuccess();
    }else{
      _view.error(res.data["msg"]);
    }

  }
}