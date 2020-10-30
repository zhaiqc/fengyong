import 'package:flutter_app_shop/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_shop/generated/json/base/json_filed.dart';

class HomeEntity with JsonConvert<HomeEntity> {
	int code;
	String msg;
	String time;
	HomeData data;
}

class HomeData with JsonConvert<HomeData> {
	@JSONField(name: "class")
	List<HomeDataClas> xClass;
	List<HomeDataBanner> banner;
	List<HomeDataShopList> shopList;
	List<HomeDataArticle> article;
}

class HomeDataClas with JsonConvert<HomeDataClas> {
	int id;
	int pid;
	String type;
	String name;
	String image;
	String flag;
	@JSONField(name: "type_text")
	String typeText;
	@JSONField(name: "flag_text")
	String flagText;
}

class HomeDataBanner with JsonConvert<HomeDataBanner> {
	int id;
	String title;
	@JSONField(name: "jump_address")
	String jumpAddress;
	String image;
	int createtime;
	int updatetime;
	String status;
	@JSONField(name: "status_text")
	String statusText;
}

class HomeDataShopList with JsonConvert<HomeDataShopList> {
	String className;
	List<HomeDataShopListShopList> shopList;
}

class HomeDataShopListShopList with JsonConvert<HomeDataShopListShopList> {
	int id;
	String title;
	String subtitle;
	@JSONField(name: "category_id")
	int categoryId;
	String price;
	@JSONField(name: "original_price")
	String originalPrice;
	@JSONField(name: "price_title")
	String priceTitle;
	String smallimages;
	int shoplike;
	int recommend;
	String status;
	@JSONField(name: "spell_status")
	String spellStatus;
	@JSONField(name: "spell_num")
	int spellNum;
	int createtime;
	int updatetime;
	@JSONField(name: "manystore_id")
	int manystoreId;
	@JSONField(name: "setmeal_ids")
	String setmealIds;
	@JSONField(name: "manystoretaps_ids")
	String manystoretapsIds;
	String attachfile;
	String content;
	String rightsandinterestscontent;
	String mianzecontent;
	String introduction;
	@JSONField(name: "manystoretaps_text")
	List<HomeDataShopListShopListManystoretapsText> manystoretapsText;
	List<dynamic> avatar;
	@JSONField(name: "status_text")
	String statusText;
	@JSONField(name: "spell_status_text")
	String spellStatusText;
}

class HomeDataShopListShopListManystoretapsText with JsonConvert<HomeDataShopListShopListManystoretapsText> {
	int id;
	@JSONField(name: "manystore_id")
	int manystoreId;
	String name;
}

class HomeDataArticle with JsonConvert<HomeDataArticle> {
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
