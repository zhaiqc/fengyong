import 'package:flutter_app_shop/home/model/home_entity.dart';
import 'package:flutter_app_shop/home/model/shop_entity.dart';

abstract class HomeView{
void initSuccess(HomeEntity entity);
void getShopSuccess(ShopEntity entity);
void err(msg);
}