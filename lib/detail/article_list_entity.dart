import 'package:flutter_app_shop/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_shop/generated/json/base/json_filed.dart';

class ArticleListEntity with JsonConvert<ArticleListEntity> {
	int code;
	String msg;
	String time;
	List<ArticleListData> data;
}

class ArticleListData with JsonConvert<ArticleListData> {
	int id;
	@JSONField(name: "shoplist_id")
	int shoplistId;
	@JSONField(name: "user_id")
	int userId;
	dynamic title;
	int likenum;
	int createtime;
	String smallimages;
	String content;
	String nickname;
	String avatar;
	@JSONField(name: "status_text")
	String statusText;
}
