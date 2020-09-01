import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/home/shop/model/shop_list_entity.dart';
import 'package:flutter_app_shop/home/shop/view/ShopListView.dart';
import 'package:flutter_app_shop/home/shop/view_model/ShopListViewModel.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_app_shop/utils/widgets/LoadingDialog.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:toast/toast.dart';

class ShopListPage extends StatefulWidget {
  int id;
  ShopListPage({
    Key key,
    this.id
  }) : super(key: key);
  @override
  _ShopListPageState createState() => _ShopListPageState();
}

class _ShopListPageState extends State<ShopListPage> implements ShopListView {
  int page =1;
  int limit =10;
  ShopListViewModel _viewModel;
  ShopListEntity _entity;
   EasyRefreshController controller =new EasyRefreshController();
  @override
  void initState() {
    _viewModel=new ShopListViewModel(this);
    _viewModel.getShopList(category_id: widget.id,page: page,limit: limit,title: "",status: 1);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _entity!=null?build_body():LoadingDialog(""),

    );
  }

  Widget build_body(){
    return  EasyRefresh(
      controller: controller,
      header: BallPulseHeader(
          color: AppConfig.mainColor
      ),
      footer: BallPulseFooter(
          color: AppConfig.mainColor
      ),
      child: CustomScrollView(slivers: [
        SliverList(
            delegate:SliverChildBuilderDelegate((BuildContext context, int index){
              return shopItem(_entity.data[index]);
            },childCount: _entity.data.length))
      ],),
      onRefresh: () async{
        page=1;
        _viewModel.getShopList(page: page,limit: limit,category_id:widget.id);


      },
      onLoad: () async {
        page =page +1;
        _viewModel.getShopList(page: page,limit: limit,category_id:widget.id);

      },
    );

  }
  Widget shopItem(ShopListData data) {
    return Container(

      height: AppConfig.logic_height(250),
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
      margin: EdgeInsets.fromLTRB(10, 20, 10,10 ),
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
                                        fontSize: AppConfig.logic_width(30),height: 1),
                                    ),
                                    width: double.infinity,
                                  ),flex: 2,),
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    data.priceTitle,
                                    style: TextStyle(fontSize: AppConfig.logic_width(25),color: Colors.grey),
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
                                                    AppConfig.logic_fontSize(
                                                        18),
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
                                                  fontSize:
                                                  AppConfig.logic_width(30),
                                                  color: Colors.red),
                                            ),
                                            Text(
                                              "￥${data.originalPrice}",
                                              style: TextStyle(
                                                  fontSize:
                                                  AppConfig.logic_width(25),
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
//              _viewModel.getShop(shoplist_id: data.id);
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
    Toast.show(msg, context);
    controller.finishLoad();
    controller.finishRefresh();
    // TODO: implement err
  }

  @override
  void getShopListSuccess(ShopListEntity entity) {
    setState(() {
      _entity=entity;
    });
    controller.finishLoad();
    controller.finishRefresh();
    // TODO: implement getShopListSuccess
  }

  @override
  void getShopListMoreSuccess(ShopListEntity entity) {
    setState(() {
      entity.data.forEach((element) {
        _entity.data.add(element);
      });
    });
    controller.finishLoad();
    controller.finishRefresh();
    // TODO: implement getShopListMoreSuccess
  }
}
