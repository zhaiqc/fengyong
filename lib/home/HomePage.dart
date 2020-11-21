import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/article/AritlceDetailPage.dart';
import 'package:flutter_app_shop/detail/DetailPage.dart';
import 'package:flutter_app_shop/home/model/home_entity.dart';
import 'package:flutter_app_shop/home/model/shop_entity.dart';
import 'package:flutter_app_shop/home/shop/ShopList.dart';
import 'package:flutter_app_shop/home/view/HomeView.dart';
import 'package:flutter_app_shop/home/view_model/HomeViewModel.dart';
import 'package:flutter_app_shop/utils/AlertView.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_app_shop/utils/widgets/LoadingDialog.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../utils/AppConfig.dart';

class HomePage extends StatefulWidget {
  var animatedCallBack;
  var reAnimatedCallBack;

  HomePage(this.animatedCallBack, this.reAnimatedCallBack);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements HomeView {
  HomeViewModel _viewModel;
  HomeEntity _entity;
  ScrollController _controller = new ScrollController();

  @override
  void initState() {
    _viewModel = HomeViewModel(this);
    _viewModel.init();
    _controller.addListener(() {
      if (_controller.offset < 200) {
        widget.reAnimatedCallBack();
      } else if (_controller.offset >= 200) {
        widget.animatedCallBack();
      }
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppConfig.build_appBar(context, () {}),
      // appBar: AppBar(backgroundColor: AppConfig.widgetColor,),
      body: _entity != null ? build_body() : LoadingDialog(""),
    );
  }

  Widget build_body() {
    return CustomScrollView(
      controller: _controller,
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
                        new BorderRadius.all(new Radius.circular(15.0)),
                    child: new Image.network(
                      _entity.data.banner[index].image,
                      fit: BoxFit.cover,
                    ),
                  );
                },
                options: CarouselOptions(
                  height: AppConfig.logic_width(350),
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),

              ),
            ),
          ]),
        ),
        new SliverList(
          delegate: new SliverChildListDelegate([
            AppConfig.lineView(),
          ]),
        ),
        new SliverPadding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, bottom: 0.0, top: 20.0),
            sliver: SliverGrid(
              delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _selectSortViewCell(_entity.data.xClass[index]);
                },
                childCount: _entity.data.xClass.length,
              ),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _entity.data.xClass.length,
                  crossAxisSpacing: AppConfig.logic_width(10.0),
                  childAspectRatio: 1.5 ),
            )),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return shops(_entity.data.shopList[index]);
            },
            childCount: _entity.data.shopList.length,
          ),
        ),
        new SliverList(
          delegate: new SliverChildListDelegate([
          AppConfig.lineView()
          ]),
        ),
        ///推荐
        SliverList(
          delegate: SliverChildListDelegate([
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
                      "推荐",
                      style: AppConfig.normalTextStyle(
                          AppConfig.fontDarkColor, AppConfig.font_midSize),
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
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              height: AppConfig.logic_width(460) * (_entity.data.article.length*0.9),
              child: StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                itemCount:  _entity.data.article.length,
                itemBuilder: (BuildContext context, int index) =>

    GestureDetector(child:  new Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                  blurRadius: 15.0, //阴影模糊程度
                  spreadRadius: 1.0 //阴影扩散程度
              )
            ]),
        child:Stack(children: [
          new Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                            _entity.data.article[index].smallimages.split(",")[0]
                        ),
                      ),
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25.0),topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
                    ),
                  ),
                  flex: 6,
                ),

              ],
            ),
          ),
          Positioned(

            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top:index.isEven? AppConfig.logic_fontSize(512):AppConfig.logic_fontSize(587)),

                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: AppConfig.logic_fontSize(20),left: AppConfig.logic_fontSize(10),right: AppConfig.logic_fontSize(10) ),
                        child: Text(
                          _entity.data.article[index].content,
                          softWrap: true,
                          maxLines: 2,
                          style: TextStyle(

                              fontWeight: FontWeight.bold,
                              fontSize: AppConfig.logic_fontSize(28),height: 1),
                        ),
                      ),
                      Container(margin: EdgeInsets.only(top:  index.isEven?AppConfig.logic_width(31):AppConfig.logic_width(45),bottom:index.isEven?AppConfig.logic_width(5):AppConfig.logic_width(10) ),
                        child: Row(
                          children: [
                            Container(
                              width: AppConfig.logic_width(18),
                            ),
                            new ClipOval(
                              child: new Image.network(
                                _entity.data.article[index].avatar,
                                width:
                                AppConfig.logic_width(30),
                              ),
                            ),
                            Container(
                              child: Text(
                                _entity.data.article[index].nickname,
                                style: TextStyle(
                                    fontSize: AppConfig
                                        .logic_fontSize(25),height: 1),
                              ),
                            ),
//                                Expanded(child: Container()),
                            Container(
                              width: AppConfig.logic_width(120),
                            ),

                            Container(
                              child: Icon(
                                Icons.favorite_border,
                                size: AppConfig.logic_fontSize(
                                    25),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  right:
                                  AppConfig.logic_fontSize(
                                      18)),
                              child: Text(
                                "${_entity.data.article[index].likenum}",
                                style: TextStyle(
                                    fontSize: AppConfig
                                        .logic_fontSize(25),height: 1),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            width: AppConfig.logic_width(755)/2,
            bottom: 0,

          )


        ],) ) ,onTap: (){
      AppConfig.navigator(context: context,page: AritlceDetailPage(_entity.data.article[index]));
    },)
              ,
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 3.5 : 4),
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
              ),
            )
          ]),
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
            AppConfig.navigator(context: context,page: ShopList(entity: _entity,name: data.name,));

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
    return shop.shopList.isNotEmpty? new Container(
      child: new Column(
        children: <Widget>[
          AppConfig.lineView(),
//          new Container(
//            margin: const EdgeInsets.only(top: 5.0),
//            height: 7.0,
//            color: Colors.black12,
//          ),
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
                    AppConfig.navigator(context: context,page: ShopList(entity: _entity,name: shop.className ,));
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
//          AppConfig.lineView(),
          new Container(
            alignment: Alignment.center,
            height: AppConfig.logic_width(300.0) * shop.shopList.length,
            //* (new AllModel().homePageModel.videosList[index].length / 2).ceil(),
            child: new GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2.5,
              ),
              itemBuilder: ((BuildContext context, int index) {
                return shopItem(shop.shopList[index]);
              }),
              itemCount: shop.shopList.length,
//                children: shopItem(new AllModel().homePageModel.videosList[index].length, index),
            ),
          ),
        ],
      ),
    ):Container();
  }

  Widget shopItem(HomeDataShopListShopList data) {
    return Container(

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 0.0), //阴影xy轴偏移量
                blurRadius: 1.0, //阴影模糊程度
                spreadRadius: 0.0 //阴影扩散程度
            )
          ]),
     margin: EdgeInsets.fromLTRB(10, 10, 10,10 ),
      padding:EdgeInsets.all(10 ) ,
      child: Container(
          child: InkWell(
        child: Column(
          children: [
            Expanded(
              child: Container(
//                margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
//                        width: AppConfig.logic_width(50),
                        decoration: new BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  data.smallimages.split(",")[0],
                                ),
                                fit: BoxFit.cover)),
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
                                    height: 1,
                                    fontSize: AppConfig.logic_width(30),),
                              ),
                              width: double.infinity,
                            ),flex: 1,),
                          Container(
                              width: double.infinity,
                              child: Text(
                                data.priceTitle,
                                style: TextStyle(fontSize: AppConfig.logic_width(25),color: Colors.grey,height: 1),
                              ),
                            ),
                            Expanded(
                                child: Container(
                                    child: ListView.builder(
                                        itemCount:
                                            data.manystoretapsText.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (contex, index) {
                                          return Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "${data.manystoretapsText[index].name}",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                height: 1,
                                                color: Colors.red,
                                                fontSize:
                                                    AppConfig.logic_fontSize(18),
                                              ),
                                            ),
                                            decoration: new BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.0)),
                                              border: new Border.all(
                                                  width:
                                                      AppConfig.logic_width(2),
                                                  color: Colors.red),
                                            ),
                                            margin: EdgeInsets.all(
                                                AppConfig.logic_width(10)),
                                            height: AppConfig.logic_width(40),
                                            width: AppConfig.logic_width(100),
                                          );
                                        }))),
                            Expanded(
                                child: Container(
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Text(
                                          "￥${data.price}",
                                          style: TextStyle(
                                            height: 1,
                                              fontSize:
                                                  AppConfig.logic_width(30),
                                              color: Colors.red),
                                        ),
                                        Text(
                                          "￥${data.originalPrice}",
                                          style: TextStyle(
                                            height: 1,
                                              fontSize:
                                                  AppConfig.logic_width(25),
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
//                                        data.spellStatus=="1"?  Container(
//                                          margin: EdgeInsets.only(left: AppConfig.logic_width(10)),
//                                          height: AppConfig.logic_height(30),
//                                          width: AppConfig.logic_width(100),
//                                          padding: EdgeInsets.all(AppConfig.logic_width(10)),
//                                          decoration: new BoxDecoration(
//                                            color: Colors.white10,
//                                            borderRadius: BorderRadius.only(
//                                                topLeft:  Radius.circular(8.0),
//                                                topRight:  Radius.circular(8.0),
//                                                bottomRight:  Radius.circular(8.0)
//                                            ),
//                                            border: new Border.all(
//                                                width: AppConfig.logic_width(0),
//                                                color: Colors.red
//                                            ),
//                                          ),
//                                          child:Text("${data.spellNum}人团",style: TextStyle(color: Colors.red,fontSize: AppConfig.logic_fontSize(16),height: 1),textAlign: TextAlign.center,) ,
////                      "￥${widget.entity.data.originalPrice}",
////                      style: TextStyle(
////                          fontSize: AppConfig.logic_width(25),
////                          color: Colors.grey,
////                          decoration: TextDecoration.lineThrough),
//                                        ):Container(),
                                        Expanded(child: Container()),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "马上抢",
                                            style: TextStyle(
                                              height: 1,
                                                color: Colors.white,
                                                fontSize:
                                                    AppConfig.logic_fontSize(
                                                        20)),
                                          ),
                                          decoration: new BoxDecoration(
                                            //背景
                                            color: Colors.red,
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

//                            Expanded(
//                              child: Container(
//                                color: AppConfig.color_null,
//                                child: Row(
//                                  children: [
//                                    Expanded(
//                                      child: Text("${data.recommend}位体验师推荐"),
//                                      flex: 3,
//                                    ),
//                                    Expanded(
//                                      child: Text(
//                                        "${data.shoplike}人种草",
//                                        style: TextStyle(color: Colors.grey),
//                                      ),
//                                      flex: 1,
//                                    )
//                                  ],
//                                ),
//                              ),
//                              flex: 1,
//                            ),
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

          ],
        ),
        onTap: () {
            _viewModel.getShop(shoplist_id: data.id)
          ;
//          showDialog(
//            context: context,
//            barrierDismissible: true,
//            builder: (BuildContext context)=>new AlertView(),
//          );
        },
      )),
    );
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

  @override
  void getShopSuccess(ShopEntity entity) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => new AlertView(
        entity: entity,
        onTap: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (_) => new DetailPage(entity)));
        },
      ),
    );    // TODO: implement getShopSuccess
  }
}
