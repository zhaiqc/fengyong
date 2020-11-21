import 'package:dio/dio.dart';
import 'package:flutter_app_shop/detail/DetailView.dart';
import 'package:flutter_app_shop/login/model/User.dart';
import 'package:flutter_app_shop/utils/HttpUtils.dart';
import 'package:flutter_app_shop/utils/LogUtis.dart';

import 'article_list_entity.dart';
import 'creat_order_entity.dart';

class DetailViewModel {
  DetailView _view;

  DetailViewModel(this._view);

  void getArticle({int shoplist_id}) async {
    FormData formData = new FormData.fromMap({"shoplist_id": shoplist_id});
    LogUtils.d(formData.toString());
    Response res = await HttpUtils().sendData(
        url: "index/getArticleList", data: formData);
    if (res.data["code"] == 1) {
      ArticleListEntity entity = ArticleListEntity().fromJson(res.data);

      _view.getArticleListSuccess(entity);
    } else {
      _view.error(res.data["msg"]);
    }
  }


  void getQrCode() async {
    Response res = await HttpUtils().sendData(url: "common/init");
    if (res.data["code"] == 1) {
      _view.getQrSuccess(res.data["data"]["vip_wechat"]);
    } else {
      _view.error(res.data["msg"]);
    }
  }

  void createOrder({int shoplist_id, int order_id, String type}) async {
    FormData formData = new FormData.fromMap({
      "token": new User().entity.data.userinfo.token,
      "shoplist_id": shoplist_id,
      "order_id": order_id,
      "type": "wechat"
    });
    LogUtils.d(shoplist_id);
    LogUtils.d(new User().entity.data.userinfo.token);
    Response res = await HttpUtils().sendData(
        url: "shop/createOrder", data: formData);
    LogUtils.d(res);

    if (res.data["code"] == 1) {
      // ArticleListEntity entity =ArticleListEntity().fromJson(res.data);
      //
      CreatOrderEntity entity = CreatOrderEntity().fromJson(res.data);
      _view.createOrderSuccess(entity);
    } else {
      _view.error(res.data["msg"]);
    }
  }

  void payOrder({ordersn}) async {
    FormData formData = new FormData
        .fromMap({"token": new User().entity.data.userinfo.token,"type":"wechat","ordersn":ordersn});
    Response res = await HttpUtils().sendData(
        url: "shop/payOrder", data: formData);
    LogUtils.d(res);
  }
}