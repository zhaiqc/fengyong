import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/home/model/shop_entity.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class DetailPage extends StatefulWidget {
  ShopEntity  entity;

  DetailPage(this.entity);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Widget> tags =new List();
  int height=0;
 var html="<p><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">上次吃辣是什么时候了？</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">那种又香又辣的刺激还记得吗</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">面红耳赤、酣畅淋漓</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\"><br></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\">火爆18年的湘菜扛把子——望湘园来了！</span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">为你精选搭配男女老少皆宜的套餐</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><br></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"font-size: 0.65rem; outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">不仅</span><span style=\"font-size: 0.65rem; outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">食欲大开，营养搭配也很均衡</span><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">工作午餐、朋友聚会、家庭聚餐都相宜</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">最重要还有望湘园18年来</span><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\">史无前例的超低折扣</span>！</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/cd8f33e929332ab8110e56fa600744ca-reDHqA-CCMwfAfhg1\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/173ec3a43bd786705d71b0ee0b1552fe-gGxXn3-bMOMwiCkhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><div style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><div style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; overflow-wrap: break-word;\"><p class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; overflow-wrap: break-word; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/87174837af4961425d4dc447fd3e8e3c-ikSS4Q-gkCwgkChj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></p></div></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; font-size: 0.65rem; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; font-size: 0.65rem; overflow-wrap: break-word !important;\">看饿了吗？</span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.65rem; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(51, 51, 51);\">望湘园首次推出超值套餐只要</span><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(255, 34, 68);\">88</span></span><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(255, 0, 0); max-width: 100%; font-size: 0.65rem; overflow-wrap: break-word !important;\">元！</span></span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; font-size: 0.65rem; overflow-wrap: break-word !important;\">好评达到4.84的湘菜馆不愧是18</span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; font-size: 0.65rem; overflow-wrap: break-word !important;\"><br></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; font-size: 0.65rem; overflow-wrap: break-word !important;\">年的老牌子，人均93元，现在88元分量十足，3个人都能吃饱。</span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); font-size: 0.65rem; overflow-wrap: break-word !important;\">全国55店通用，上</span></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); font-size: 0.65rem; overflow-wrap: break-word !important;\"><br></span></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); font-size: 0.65rem; overflow-wrap: break-word !important;\">海33店全覆盖！</span></span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); font-size: 0.65rem; overflow-wrap: break-word !important;\">有效期到今年底，周末、节假日通用，堂食或者自提都可以！</span></span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); font-size: 0.65rem; overflow-wrap: break-word !important;\">快</span></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); font-size: 0.65rem; overflow-wrap: break-word !important;\"><br></span></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); font-size: 0.65rem; overflow-wrap: break-word !important;\">快安排～</span></span></span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(255, 41, 65); font-size: 0.65rem; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/1be9e933dcbd6a36900f0d422fa2e389-UuJksi-bAOMwbbeChj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 0, 0); font-size: 0.75rem; font-weight: bold; letter-spacing: 0.01em;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); overflow-wrap: break-word !important;\">我们家爱吃辣，但是宝宝还小，不适合吃辣，所以想找一个能满足一家人口味的大众餐厅有点费功夫。无意中去望湘园，还是觉得不错的。给宝宝点了花甲虾仁炖蛋，和一盅山药排骨汤，吃得很香；给大人点了双椒鱼头、酸汤肥牛、小炒肉，也很好吃?虽然不像亲子餐厅那么有feel，但是很有生活气息。<span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 153, 170);\">—彩贝壳体验师@</span><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 153, 170);\">林意悠然</span><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 153, 170);\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); overflow-wrap: break-word !important;\"></span></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/0606f3a623fbf393716bdd2cfc195983-vwnvp5-feAOwAfgehj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(0, 0, 0); font-size: 0.75rem; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(0, 0, 0); font-size: 0.75rem; overflow-wrap: break-word !important;\">泡椒酸汤肥牛，无肉不欢的最爱</span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(0, 0, 0); font-size: 0.75rem; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">望湘园对于泡椒酸汤肥牛这道菜有着自己独特的秘方，细致到辣椒的选材。通常的</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">泡椒选用野山椒，而望湘园特地选用了长红尖椒，它的含水量更高，因此发酵后的</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">风味更丰富，独有的酸辣风味是托付于时间的回报。将它交付于老坛中，自然发酵</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">长达3个月。</span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/407260cf33bc324f7edf5978c66e0ab1-NzL0ek-bAOMwOCfhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; font-size: 0.65rem;\">酸汤是这道菜的灵魂，秘制的酸汤料，有着3种辣椒长时间</span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; font-size: 0.65rem; overflow-wrap: break-word !important;\">煮制而成，小酸小辣，不炝口，就算辣的直冒汗，这碗汤一滴也都不想剩下。</span></span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px; font-size: 0.65rem; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/7bc3818fec89e7e52e9b89468b006ada-H5c70w-fOMwAbehg1\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">当然主角牛肉不能怠慢，选用进口肥牛，肥瘦为4:6的肉，切成薄片，最是鲜嫩无</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">比的，配菜有丝滑的金针菇和脆爽的莴笋丝，又是一碗饭的节奏。量大满足，前来</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">的食客对它的评价就是一个“好”字。</span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/15045e29c918071293ad95d23a2ac213-508ChP-bAOMwbMCehj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/ee7376a9951a27dc038fb976cb3886ad-tbd6Uz-eCAwfAMhg1\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; color: rgb(0, 0, 0); font-size: 0.75rem;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; color: rgb(0, 0, 0); font-size: 0.75rem;\">老坛酸菜鱼，酸酸辣辣很开胃</span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">老坛酸菜，必须是来自老坛啊！望湘园采用古法腌制酸菜，将老坛置于避光而不通</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">气的地方。酸菜选用杆子多叶子少的发酵酸菜，这样更能保持水分和形状，颜色是</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">浅黄的，口感脆爽中带着菜的清甜，它的酸不浓烈抢味，因此非常好的衬托出了鱼</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); letter-spacing: 0.544px;\">的鲜味。</span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/0606f3a623fbf393716bdd2cfc195983-vwnvp5-feAOwAfgehj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/acc0d08492e8fc782a2fa03cb0e943af-qxukqX-kOkwggbhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\">酸</span><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\">菜鱼好不好吃它的汤是关键，舀一勺品，鱼肉的鲜和酸菜在舌尖汇合，浓郁瞬间在</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\">口中蔓延开来。</span><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\">是碗好汤。</span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/ae7ec14a1d5267ede360071df0b4aecd-zdt4Fy-efOwAAkhg1\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/aa3361b14f129ed6d12d31424e5b0625-g0tXot-CkgwffChg1\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">鱼肉选用肉质白嫩刺少的鱼片，吃起来特别清甜，刚入嘴有花椒的麻，随之而来就是各种辣椒的香味，鱼肉的鲜美拿捏得正好。</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/cb0b17c164ece8b69de906888d8b77af-tfqRWP-geMwfgMhg1\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 0, 0); font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; font-size: 0.75rem;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 0, 0); font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; font-size: 0.75rem;\">泰式青柠小木耳，</span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.75rem; overflow-wrap: break-word !important;\">丰富的膳食纤维健康开胃</span></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">这道必点的小凉菜有它的诱人之处，将传统的凉拌菜进行创新，用青柠的果酸代替了</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">醋，多了水果的清新，泰式的酸辣多了异域风情，一粒一粒的小木耳一口一个，作为</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">开胃的小菜再合适不过了。</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/d435b0f507d5f409bfbf44cb2d3b8f3d-joMlh7-bMMMwiCMhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 0, 0); font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; font-size: 0.75rem;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 0, 0); font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; font-size: 0.75rem;\">湘辣土豆丝，</span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.75rem; overflow-wrap: break-word !important;\">永不踩坑的经典菜</span></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.7rem; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">土豆丝是万年的家常菜，它并不显眼但就是有种让人选它的魔力。一份好吃的土豆丝</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">有两个必备的条件：粗细适中的宽度和爽脆的口感。望湘园的土豆丝都做到了，看似</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">简单的菜，酸酸辣辣的，只一口便好吃得停不下来。<br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/33a7bf6034dba7d6c4d509048c0ad384-gH84Fw-OCkwCibhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 0, 0); font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; letter-spacing: 0.01em; font-weight: bold; font-size: 0.75rem;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; color: rgb(0, 0, 0); font-size: 0.6rem;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; letter-spacing: 0.01em; font-weight: bold; font-size: 0.75rem;\">虾仁花甲蒸蛋，</span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.75rem; overflow-wrap: break-word !important;\">营养健康，宝贝最爱</span></span></span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">看！大颗的虾仁Q弹看得见，送入嘴，和果冻质地嫩滑的鸡蛋一起入口，在你的嘴里</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">跳起了舞。细腻的口感宝宝也喜欢，大口的往嘴里送。</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/821d4b4bb23058e994a23020d7865e24-TJl5zj-iCMwCMAhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: right;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.6rem; color: rgb(0, 153, 170); overflow-wrap: break-word !important;\">▲来自彩贝壳体验师@林意悠然</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">花甲的新鲜能从它饱满的肉看出来，当它被牙齿挤压时，汁水会从嘴里爆开一阵鲜味</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">爆裂，充斥着整个口腔。这道炖蛋大小朋友都可以安排！</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/6e33e711834bd155954cb93b0be87292-gqVIai-iegwekghj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem; color: rgb(0, 0, 0);\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; font-size: 0.75rem;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-size: 0.6rem; color: rgb(0, 0, 0);\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; font-size: 0.75rem;\">油渣炒青菜，</span><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.75rem; overflow-wrap: break-word !important;\">蔬菜也可以很好吃</span></span></span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">来点健康的绿叶菜吧～但是望湘园当然不是白灼的做法，用湖南乡间传统做法，将简</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">单的一道素菜做成江湖菜。油渣是花白的猪肉炸制所成，特别的香。</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/c2f58f0b5f62bc96b5c8f3380ecbc22f-dTnVOO-kibwiAOhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">油渣将肉香引入到青菜里，保证青菜翠绿的同时，增加了油渣的肉香，吃上去口感润</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">滑。</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/202290ba28b4082a4ba522c3a1dda04d-Scui3O-OkbwCObhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; color: rgb(0, 0, 0); font-size: 0.75rem;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; color: rgb(0, 0, 0); font-size: 0.75rem;\">薄荷桂花乌梅汁，解辣神器</span><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">没有饮料的饭总是有遗憾的，这顿重口的餐食来点健康的的解解辣。柠檬和薄荷的组</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">合可谓是最佳的搭配，清火提神。</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/0509b76a422b31d7ccd9012585e869f6-PjHA7b-bAOMwbCAbhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">里面的桂花的香气增添了甜味，酸甜的乌梅汁，立马去除了口中的辣味，让人还能再</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">多吃两口菜。</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/88543955a972619fd49883d9911370fe-PzDn4T-bMAfwgOfhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(0, 0, 0); font-size: 0.75rem; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; color: rgb(0, 0, 0); font-size: 0.75rem; overflow-wrap: break-word !important;\">稻花香米饭，蒸出来的米饭更好吃</span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">吃湘菜，米饭才是灵魂，平时不吃主食，在望湘园也能妥妥的扒掉一碗米饭。望湘园</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"><br></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\">的米饭超级好吃，颗粒分明，喷香扑鼻。</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; overflow-wrap: break-word !important;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.7rem; overflow-wrap: break-word !important;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/9b1257119684451b42b171220f742512-QxLLJv-bMOMwifAhj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: auto; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bolder; max-width: 100%; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-size: 0.8rem; letter-spacing: 0.544px; overflow-wrap: break-word !important;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; font-size: 0.7rem; overflow-wrap: break-word !important;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></span></span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><span style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-weight: bold; color: rgb(0, 0, 0); font-size: 0.75rem;\">富有东方韵味的湘菜馆</span></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">为了能给顾客一个舒适的用餐环境，老板将中国元素融入装修，但同时结合当下年轻</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\">人的审美风格，整体是清新的绿色，在这样的一个环境里用餐中真真是种惬意。</p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit;\"></p><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/ca6f65c044f288ae9d4cf2abadaa805d-LH4CUG-bAOMwOCehj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/f78e8adc16705c63d2e4c1b0b891956b-00Ddes-bAOMwOCehj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/1ef9fc56ab0c1f5e80824a0ae7c5ed5f-ClwMxn-bAOMwOCehj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: center;\"></p><div class=\"context-img\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify; position: relative; display: inline-block; width: 960px; min-height: auto;\"><img intercept=\"0\" src=\"http://static.caibeike.com/i/c408ef8a14d193b8ac4a8f11adaa4ffa-By5RLG-bAOMwOCehj2@!w750m\" data-complete=\"1\" style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; max-width: 100%; vertical-align: top; position: relative; height: auto; z-index: 1; background: transparent; opacity: 1; width: 960px; margin: 5px 0px 0px !important; border-radius: 1px !important;\"></div><p style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; margin-bottom: 0px; padding: 0px; list-style: none; font-size: 0.65rem; line-height: 1.1rem; color: rgb(68, 68, 68); overflow-wrap: break-word; text-align: justify;\"><br style=\"outline: none; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font-family: &quot;HanHei SC&quot;, PingHei, &quot;PingFang SC&quot;, STHeitiSC-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 27.7333px;\"></p>";

  @override
  void initState() {

    height=widget.entity.data.setmeal.length;
    for(int i =0;i<widget.entity.data.setmeal.length;i++){
      height=height+ widget.entity.data.setmeal[i].configjson.length;
    }

    widget.entity.data.manystoretaps.forEach((element) {
      tags.add( Container(
        alignment: Alignment.center,
        child: Text("${element.name}",
          textAlign: TextAlign.right,
          style: TextStyle(
              color: Colors.red,
              fontSize:
              AppConfig.logic_fontSize(
                  18)),
        ),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(5.0)),
          border: new Border.all(
              width: AppConfig.logic_width(2),
              color: Colors.red),
        ),
        margin: EdgeInsets.all(
            AppConfig.logic_width(20)),
        height: AppConfig.logic_width(40),
        width: AppConfig.logic_width(100),
      ),);
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
//          leading:  Text('大玩家【227店通用】',style: TextStyle(fontSize:AppConfig.logic_fontSize(15)),),
            pinned: false,
            expandedHeight: AppConfig.logic_height(500),
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                background: header()),
          ),

          ///标题
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: Text(
                  "${widget.entity.data.title}",
                  style: TextStyle(
                    fontSize: AppConfig.logic_fontSize(35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                margin: EdgeInsets.all(AppConfig.logic_width(20)),
              ),
            ]),
          ),

          ///信息
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: AppConfig.logic_width(20)),
                              child: Column(
                                children: [
                                  Row(children: tags,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(AppConfig.logic_width(10)),

                                    alignment: Alignment.centerLeft,
                                    child: HtmlWidget( widget.entity.data.rightsandinterestscontent,),
                                  ),
                                  Container(
//                        margin: EdgeInsets.only(left: AppConfig.logic_width(20)),
                                    height: AppConfig.logic_height(100),
                                    child: Row(
                                      children: [
                                        Text(
                                          "￥",
                                          style: TextStyle(
                                              fontSize:
                                              AppConfig.logic_fontSize(
                                                  15),
                                              color: Colors.red),
                                        ),
                                        Text(
                                          "${widget.entity.data.price}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                              AppConfig.logic_fontSize(
                                                  45),
                                              color: Colors.red),
                                        ),
                                        Text(
                                          "￥${widget.entity.data.originalPrice}",
                                          style: TextStyle(
                                              fontSize:
                                              AppConfig.logic_width(25),
                                              color: Colors.grey,
                                              decoration:
                                              TextDecoration.lineThrough),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ))),
                    ],
                  ),
                ),

//              height: AppConfig.logic_height(220),
                margin: EdgeInsets.all(AppConfig.logic_width(20)),
              ),
            ]),
          ),

          ///套餐
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "到店套餐",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
//                      new Container(
//                        child: new GestureDetector(
//                          onTap: () {
//                            ///分类点击事件
//                          },
//                          child: new Row(
//                            children: <Widget>[
//                              new Text("查看全部",
//                                  style: TextStyle(
//                                      fontSize: AppConfig.logic_fontSize(20))),
//                              new Icon(
//                                Icons.chevron_right,
//                                size: AppConfig.font_bigSize,
////                          color: AppConfig.widgetColor,
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
                  ],
                ),

//              height: AppConfig.logic_height(90),
              ),
            ]),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(top: AppConfig.logic_width(20)),
                              child: Column(
                                children: [
                                  Container(
                                      height: AppConfig.logic_height(50) *height,
                                      alignment: Alignment.centerLeft,
                                      child: ListView.builder(
                                          physics:
                                          NeverScrollableScrollPhysics(),
                                          itemCount: widget.entity.data.setmeal.length,
                                          itemBuilder: ((context, index) {
                                            return item(index);
                                          }))),
                                ],
                              ))),
                    ],
                  ),
                ),

                margin: EdgeInsets.all(AppConfig.logic_width(20)),
              ),
            ]),
          ),
          ///适用门店
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "适用门店",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
                  ],
                ),
                height: AppConfig.logic_height(90),
              ),
            ]),
          ),

          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin:
                            EdgeInsets.only(left: AppConfig.logic_width(20)),
//                          color: Colors.red,
                            child: Image.network(
                              widget.entity.data.manystore.image,
                              height: AppConfig.logic_width(100),
                              width: AppConfig.logic_width(100),
                            ),
                          )),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(
                              left: AppConfig.logic_width(20)),
//                          color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                widget.entity.data.manystore.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.entity.data.manystore.address,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: AppConfig.logic_fontSize(20)),
                              )
                            ],
                          ),
                        ),
                        flex: 3,
                      ),
                      Expanded(
                          child: Container(
                            margin:
                            EdgeInsets.only(left: AppConfig.logic_width(20)),
//                          color: Colors.red,
                            child: Icon(
                              Icons.phone,
                              color: Colors.red,
                            ),
                          )),
                    ],
                  ),
                ),
                margin: EdgeInsets.all(AppConfig.logic_width(10)),
              ),
            ]),
          ),



          ///体验shi
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
                    ),
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "体验师推荐",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
                    new Container(
                      child: new GestureDetector(
                        onTap: () {
                          ///分类点击事件
                        },
                        child: new Row(
                          children: <Widget>[
                            new Text("查看全部",
                                style: TextStyle(
                                    fontSize: AppConfig.logic_fontSize(20))),
                            new Icon(
                              Icons.chevron_right,
                              size: AppConfig.font_bigSize,
//                          color: AppConfig.widgetColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                height: AppConfig.logic_height(90),
              ),
            ]),
          ),

          SliverToBoxAdapter(
            child: Container(
              height: AppConfig.logic_width(700),
//                margin: EdgeInsets.only(top: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(width:  AppConfig.logic_width(600), height: AppConfig.logic_width(700),
                    child: Container(
                      child: Card(child: Container(
                        child: Column(
                          children: [
                            Expanded(child: Container(

                              alignment: Alignment.centerLeft,
                              child: Row(

                                children: [
                                  Container(

                                    width: AppConfig.logic_width(100),
                                    height:  AppConfig.logic_width(100),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    margin: EdgeInsets.only(left: AppConfig.logic_width(20)),


                                  ),

                                  Expanded(child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(child:  Container(
                                          margin: EdgeInsets.only(top: AppConfig.logic_height(10)),
                                          alignment: Alignment.centerLeft,
                                          child: Text("不会蹦跶的露露",textAlign: TextAlign.center,style: TextStyle(fontSize: AppConfig.logic_fontSize(20), fontWeight: FontWeight.bold,),),)),
                                        Expanded(child: Container())
                                      ],),

                                  ),)
                                ],),),flex: 1,),
                            Expanded(child: Container(color: Colors.blue,child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.red,
                                  child: Image.network("http://static.caibeike.com/i/30667bfefd1b8a763d8d334901c613be-fi6H8b-bAOMwbAOMhj2@!s640p",fit: BoxFit.fitWidth,),
                                ),flex: 2,),
                                Expanded(child: Container(color: Colors.yellow,child: Column(

                                  children: [
                                    Expanded(child: Container(
                                      width:double.infinity,
                                      child: Image.network("http://static.caibeike.com/i/65c85b43cec0747e0585fc38c15c7d26-cKbNms-bMgCwbAOMhj2@!s640p",fit: BoxFit.fitWidth),),),
                                    Expanded(child: Container(
                                      width:double.infinity,

                                      child: Image.network("http://static.caibeike.com/i/65c85b43cec0747e0585fc38c15c7d26-cKbNms-bMgCwbAOMhj2@!s640p",fit: BoxFit.fitWidth),),)
                                  ],),),flex: 1,),
                              ],

                            ),),flex: 3,),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(AppConfig.logic_width(20)),
                              child: Text("遛娃模式开启|家门口性价比超高的儿童乐园🌻时间匆匆又到了宝妈们开始忙碌遛娃的暑期时光了。👸大小姐在家没有安静多久就吵闹着想要出去玩。特殊时期不想去太远或者人多的地方🎠  家门口的中环百联新开了一家金宝贝探索小镇看着还不错那就带娃走起。",maxLines: 3,style: TextStyle(fontSize: AppConfig.logic_fontSize(20)),
                              ),)),
                            Expanded(child: Container(child:  Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: new ClipOval(
                                    child: new Image.network(
                                      "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                                      width: AppConfig.logic_width(50),
                                    ),
                                  ),
                                ),
                                new ClipOval(
                                  child: new Image.network(
                                    "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                                    width: AppConfig.logic_width(50),
                                  ),
                                ),
                                new ClipOval(
                                  child: new Image.network(
                                    "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                                    width: AppConfig.logic_width(50),
                                  ),
                                ),
                                Container(child: Text("13人点赞"),),
                                Expanded(child: Container()),

                                Container(child:Icon(Icons.favorite_border,size: AppConfig.logic_fontSize(25),),),
                                Container(margin:EdgeInsets.only(right: AppConfig.logic_fontSize(18)),child: Text("1060",style: TextStyle(fontSize: AppConfig.logic_fontSize(25)),),)
                              ],
                            ),),flex: 1,),

                          ],),

                      ),),),

                  );
                },
              ),
            ),
          ),
          ///图文详情
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
                    ),
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "图文详情",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
                  ],
                ),
                height: AppConfig.logic_height(90),
              ),
            ]),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([

            new Container(
            
             padding: EdgeInsets.all(AppConfig.logic_width(10)),
              height: AppConfig.logic_height(800),
              child: HtmlWidget(widget.entity.data.content,),
//             child:EasyWebView (
//
//               height: AppConfig.logic_height(800),
//               width: AppConfig.logic_width(755),
//               webAllowFullScreen:false ,
//               isMarkdown: false,
//               src:html,
//               isHtml: true,
//               onLoaded: (){
//
//               },
//             ),
           ),
            ]),
          ),
          ///免责说明
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
                    ),
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "免责说明",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
                  ],
                ),
                height: AppConfig.logic_height(90),
              ),
            ]),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                padding: EdgeInsets.all(AppConfig.logic_width(10)),

                child: HtmlWidget(
                  widget.entity.data.mianzecontent,
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: AppConfig.logic_width(20)),
                height: AppConfig.logic_height(100),
                child: Row(
                  children: [
                    Text(
                      "￥",
                      style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(15),
                          color: Colors.red),
                    ),
                    Text(
                      "${widget.entity.data.price}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppConfig.logic_fontSize(45),
                          color: Colors.red),
                    ),
                    Text(
                      "￥${widget.entity.data.originalPrice}",
                      style: TextStyle(
                          fontSize: AppConfig.logic_width(25),
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: AppConfig.logic_height(100),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: Color(0xFFFFB6C1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                Icons.chat,
                                color: Colors.red,
                                size: AppConfig.logic_fontSize(30),
                              ),
                            ),
                            Container(
                              child: Text("vip微信群",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize:
                                      AppConfig.logic_fontSize(20))),
                            )
                          ],
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: AppConfig.logic_height(100),
                        color: Colors.red,
                        child: Text(
                          "一键下单",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
      floatingActionButton:FloatingActionButton(onPressed: (){

      }, tooltip: '上传',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),

        backgroundColor: Colors.red,

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

    );
  }

  Widget header() {
    return Container(
      height: AppConfig.logic_width(610.0),
      child: Stack(
        children: [
          Container(
            height: AppConfig.logic_width(610.0),
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  widget.entity.data.smallimages.split(",")[index],
                  fit: BoxFit.fill,
                );
              },
              itemCount:     widget.entity.data.smallimages.split(",").length,
//        pagination: new SwiperPagination(
//            builder: DotSwiperPaginationBuilder(
//                color: Colors.white, activeColor: Colors.red)),
            ),
          ),
          Column(
            children: [
              Expanded(child: Container()),
              Expanded(child: Container()),
              Expanded(child: Container()),

              Expanded(child: Container(child: Row(
                children: [

                  Expanded(child: Container()),

                  Expanded(child: Container(
                    child: Center(child: Container(
                      child: Row(children: [
                        Expanded(child: Container(child: Icon(Icons.play_circle_outline,color:AppConfig.mainColor,size: AppConfig.font_smallSize,),)),
                        Expanded(child: Container(child: Text("00.06",style: TextStyle(fontSize: AppConfig.font_smallSize),),),flex: 2,),

                      ],),
                      margin: EdgeInsets.only(top: AppConfig.logic_height(10)),
                      decoration: new BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.all(
                            Radius.circular(25.0)),
                        border: new Border.all(
                            width: AppConfig.logic_width(0),
                           color: Colors.transparent),
                      ),

                     height: AppConfig.logic_height(40),width: AppConfig.logic_width(120),),),
                  )),
                  Expanded(child: Container())

                ],

              ),)),

            ],
          )
        ],
      ),
    );
  }

  Widget item(index) {
    return Container(child: Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),

          width: double.infinity,
          child: Text(
            "${widget.entity.data.setmeal[index].name}",
            style: TextStyle(
                fontSize: AppConfig.logic_width(30,), color: Colors.orangeAccent,fontWeight:FontWeight.bold ),
          ),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            height: AppConfig.logic_height(50)*  widget.entity.data.setmeal[index].configjson.length,
            width: double.infinity,
            child:ListView.builder(
                itemCount:  widget.entity.data.setmeal[index].configjson.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context,i){
                  return Container(
                    height: AppConfig.logic_height(50),
                    child:
                    Row(children: [
                      Text(
                        widget.entity.data.setmeal[index].configjson[i].name,
                        style: TextStyle(
                            fontSize: AppConfig.logic_fontSize(
                              25,
                            ),
                            color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),

                        child:  Text(
                          "￥${widget.entity.data.setmeal[index].configjson[i].price}",
                          style: TextStyle(
                            fontSize: AppConfig.logic_width(
                              25,
                            ),
                          ),
                        ) ,)

                    ],)
                    ,);
                }))


        ),
      ],
    ),) ;
  }

}

