import 'package:flutter_app_shop/home/model/shop_entity.dart';
import 'package:flutter_app_shop/home/shop/model/shop_list_entity.dart';

abstract class ShopListView{
  void getShopListSuccess(ShopListEntity entity);
  void getShopListMoreSuccess(ShopListEntity entity);
  void err(msg);
}