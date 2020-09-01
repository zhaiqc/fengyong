import 'package:flutter_app_shop/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_shop/generated/json/base/json_filed.dart';

class ShopListEntity with JsonConvert<ShopListEntity> {
	int code;
	String msg;
	String time;
	List<ShopListData> data;
}

class ShopListData with JsonConvert<ShopListData> {
	int id;
	String title;
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
	@JSONField(name: "manystoretaps_ids")
	String manystoretapsIds;
	@JSONField(name: "manystoretaps_text")
	List<ShopListDataManystoretapsText> manystoretapsText;
	List<dynamic> avatar;
	@JSONField(name: "status_text")
	String statusText;
	@JSONField(name: "spell_status_text")
	String spellStatusText;
}

class ShopListDataManystoretapsText with JsonConvert<ShopListDataManystoretapsText> {
	int id;
	@JSONField(name: "manystore_id")
	int manystoreId;
	String name;
}
