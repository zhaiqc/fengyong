import 'package:flutter_app_shop/home/model/home_entity.dart';

abstract class HomeView{
void initSuccess(HomeEntity entity);
void err(msg);
}