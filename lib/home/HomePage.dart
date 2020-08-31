import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/home/model/home_entity.dart';
import 'package:flutter_app_shop/home/view/HomeView.dart';
import 'package:flutter_app_shop/home/view_model/HomeViewModel.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';

class HomePage extends StatefulWidget {
  var animatedCallBack;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements HomeView {
  HomeViewModel _viewModel;
  HomeEntity _entity;

  @override
  void initState() {
    _viewModel = HomeViewModel(this);
    _viewModel.init();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppConfig.build_appBar(context, () {}),
      body: _entity != null ? build_body() : AppConfig.loadingView(),
    );
  }

  Widget build_body() {
    return CustomScrollView(
      slivers: [
        ///banner
        new SliverList(
          delegate: new SliverChildListDelegate([
            new Container(
              height: AppConfig.logic_width(350.0),
//         color: Colors.red,

              child: CarouselSlider.builder(
                itemCount: _entity.data.banner.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(5.0)),
                    child: new Image.network(
                      _entity.data.banner[index].image,
                      fit: BoxFit.fill,
                    ),
                  );
                },
                options: CarouselOptions(
                  height: AppConfig.logic_width(375.0),
//           viewportFraction: 0.88,
                  aspectRatio: 1.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),
          ]),
        ),
        new SliverPadding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, bottom: 0.0, top: 10.0),
            sliver: SliverGrid(
              delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _selectSortViewCell(_entity.data.xClass[index]);
                },
                childCount: _entity.data.xClass.length,
              ),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _entity.data.xClass.length,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: AppConfig.logic_width(10.0),
                  childAspectRatio: 1.25 * _entity.data.xClass.length),
            )),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return shops(_entity.data.shopList[index]);
            },
            childCount: _entity.data.shopList.length,
          ),
        )
      ],
    );
  }

  //分类模块
  Widget _selectSortViewCell(HomeDataClas data) {
    return new Container(
      height: AppConfig.logic_width(10),
      alignment: Alignment.center,
      child: new InkWell(
          onTap: () {
//              Navigator.push(context,
//                  new MaterialPageRoute(builder: (_) => new ShopListPage(entity.data[index].id)));
          },
          child: new Column(
            children: <Widget>[
//                new Expanded(child: new Container()),
              new Container(
                alignment: Alignment.center,
                child: new ClipRRect(
                  borderRadius:
                      new BorderRadius.all(const Radius.circular(10.0)),
                  child: SizedBox(
                    child: Image.network(
                      data.image,
                      height: AppConfig.logic_width(100),
                      width: AppConfig.logic_width(100),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.only(top: 5.0),
                alignment: Alignment.center,
                child: new Text(
                  data.name,
                  style: AppConfig.normalTextStyle(
                      AppConfig.fontDarkColor, AppConfig.font_smallSize),
                ),
              ),
            ],
          )),
    );
  }

  Widget shops(HomeDataShopList shop) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            height: 7.0,
            color: Colors.black12,
          ),
          new Container(
            height: AppConfig.logic_width(80.0),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
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
                    shop.className,
                    style: AppConfig.normalTextStyle(
                        AppConfig.fontDarkColor, AppConfig.font_midSize),
                  ),
                ),
                new Expanded(child: new Container()),
                new Container(
                  child: new GestureDetector(
                    onTap: () {
                      ///分类点击事件
//                      Navigator.push(context,
//                          new MaterialPageRoute(builder: (_) => new ShopListPage(entity.data[index].id)));
                    },
                    child: new Row(
                      children: <Widget>[
                        new Text("更多",
                            style: AppConfig.normalTextStyle(
                                AppConfig.fontDarkColor,
                                AppConfig.font_smallSize)),
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
          ),
          //最近更新标题
          AppConfig.lineView(),
          new Container(
            alignment: Alignment.center,
            height: AppConfig.logic_width(390.0) * 1,
            //* (new AllModel().homePageModel.videosList[index].length / 2).ceil(),
            child: new GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2,
              ),
              itemBuilder: ((BuildContext context, int index) {
                return shopItem(shop.shopList[index]);
              }),
              itemCount:shop.shopList.length,
//                children: shopItem(new AllModel().homePageModel.videosList[index].length, index),
            ),
          ) ,
        ],
      ),
    );
  }
  Widget shopItem(HomeDataShopListShopList data) {
    return Container(
        child: InkWell(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 10),

//              color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(

                          width: AppConfig.logic_width(50),
                          decoration: new BoxDecoration(

                            //背景
                            //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
                            borderRadius: BorderRadius.all(
                                Radius.circular(15.0)),
                            //设置四周边框
                            image: DecorationImage(image: NetworkImage(data.smallimages.split(",")[0],),fit: BoxFit.cover)
//                              border: new Border.all(width: 1, color: Colors.red),
                          ),


                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Column(
                            textDirection: TextDirection.ltr,
                            children: [

                              Expanded(
                                  child: Container(
                                    child: Text(
                                      data.title,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,

                                          fontSize: AppConfig.logic_width(30)),
                                    ),
                                    width: double.infinity,
                                  )),
                              Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: Text(
                                      data.priceTitle,
                                      style: TextStyle(
                                          fontSize: AppConfig.logic_width(30)),
                                    ),
                                  )),
                              Expanded(
                                  child: Container(
                                      height: AppConfig.logic_width(50),
                                      child:ListView.builder(
                                          itemCount:data.manystoretapsText.length ,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (contex,index){
                                            return Container(

                                              alignment: Alignment.center,
                                              child: Text("${data.manystoretapsText[index].name}",
                                                textAlign: TextAlign.right,

                                                style: TextStyle(
                                                  color: Colors.red,

                                                  fontSize:
                                                  AppConfig.logic_fontSize(18),),
                                              ),
                                              decoration: new BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.0)),
                                                border: new Border.all(
                                                    width: AppConfig.logic_width(2),
                                                    color: Colors.red),
                                              ),
                                              margin: EdgeInsets.all(
                                                  AppConfig.logic_width(10)),
                                              height: AppConfig.logic_width(40),
                                              width: AppConfig.logic_width(100),
                                            );
                                          })
                                  )),
                              Expanded(
                                  child: Container(
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Text(
                                            "￥${data.price}",
                                            style: TextStyle(
                                                fontSize: AppConfig.logic_width(30),
                                                color: Colors.red),
                                          ),
                                          Text(
                                            "￥${data.originalPrice}",
                                            style: TextStyle(
                                                fontSize: AppConfig.logic_width(25),
                                                color: Colors.grey,
                                                decoration:
                                                TextDecoration.lineThrough),
                                          ),
                                          Expanded(child: Container()),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "马上抢",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                  AppConfig.logic_fontSize(20)),
                                            ),
                                            decoration: new BoxDecoration(
                                              //背景
                                              color: Colors.red,
                                              //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25.0)),
                                              //设置四周边框
//                              border: new Border.all(width: 1, color: Colors.red),
                                            ),
                                            height: AppConfig.logic_height(50),
                                            margin:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                            width: AppConfig.logic_width(90),
                                          )
                                        ],
                                      ))),
                            ],
                          ),
                        ),
                        flex: 2,
                      )
                    ],
                  ),
                ),
                flex: 5,
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
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
                          ],
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text("${data.recommend}位体验师推荐"),
                        flex: 4,
                      ),
                      Expanded(
                        child: Text(
                          "已有${data.shoplike}人种草",
                          style: TextStyle(color: Colors.grey),
                        ),
                        flex: 2,
                      )
                    ],
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
          onTap: () {
//            _viewModel.getShop(shoplist_id: data.id).then((value)=>show(value)
//            )
            ;
//          showDialog(
//            context: context,
//            barrierDismissible: true,
//            builder: (BuildContext context)=>new AlertView(),
//          );
          },
        ));
  }

  @override
  void err(msg) {
    // TODO: implement err
  }

  @override
  void initSuccess(HomeEntity entity) {
    setState(() {
      _entity = entity;
    });
    // TODO: implement initSuccess
  }
}
