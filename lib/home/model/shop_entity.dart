import 'package:flutter_app_shop/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_shop/generated/json/base/json_filed.dart';

class ShopEntity with JsonConvert<ShopEntity> {
	int code;
	String msg;
	String time;
	ShopData data;
}

class ShopData with JsonConvert<ShopData> {
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
	List<ShopDataSetmeal> setmeal;
	List<ShopDataManystoretap> manystoretaps;
	ShopDataManystore manystore;
	@JSONField(name: "status_text")
	String statusText;
	@JSONField(name: "spell_status_text")
	String spellStatusText;
}

class ShopDataSetmeal with JsonConvert<ShopDataSetmeal> {
	int id;
	String name;
	List<ShopDataSetmealConfigjson> configjson;
	@JSONField(name: "status_text")
	String statusText;
}

class ShopDataSetmealConfigjson with JsonConvert<ShopDataSetmealConfigjson> {
	String name;
	String price;
}

class ShopDataManystoretap with JsonConvert<ShopDataManystoretap> {
	int id;
	String name;
}

class ShopDataManystore with JsonConvert<ShopDataManystore> {
	int id;
	String name;
	String logo;
	String image;
	String tel;
	String address;
	String content;
	@JSONField(name: "status_text")
	String statusText;
	@JSONField(name: "create_time_text")
	String createTimeText;
	@JSONField(name: "update_time_text")
	String updateTimeText;
}
