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
          padding:
          const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
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
              crossAxisSpacing: AppConfig.logic_width(35.0),
            ),
          )
        ),

      ],
    );
  }


  //分类模块
  Widget _selectSortViewCell(HomeDataClas data) {

    return new Container(
      alignment: Alignment.center,
      child: new Material(
        color: AppConfig.color_null,
        child: new InkWell(
            onTap: () {
//              Navigator.push(context,
//                  new MaterialPageRoute(builder: (_) => new ShopListPage(entity.data[index].id)));

            },
            child: new Column(
              children: <Widget>[
                new Expanded(child: new Container()),
                new Container(
                  alignment: Alignment.center,
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
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
      ),
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
}
