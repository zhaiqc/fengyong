import 'package:flutter_app_shop/home/shop/model/shop_list_entity.dart';
import 'package:flutter_app_shop/generated/json/base/json_filed.dart';

shopListEntityFromJson(ShopListEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg']?.toString();
	}
	if (json['time'] != null) {
		data.time = json['time']?.toString();
	}
	if (json['data'] != null) {
		data.data = new List<ShopListData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new ShopListData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> shopListEntityToJson(ShopListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['time'] = entity.time;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

shopListDataFromJson(ShopListData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['category_id'] != null) {
		data.categoryId = json['category_id']?.toInt();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toString();
	}
	if (json['original_price'] != null) {
		data.originalPrice = json['original_price']?.toString();
	}
	if (json['price_title'] != null) {
		data.priceTitle = json['price_title']?.toString();
	}
	if (json['smallimages'] != null) {
		data.smallimages = json['smallimages']?.toString();
	}
	if (json['shoplike'] != null) {
		data.shoplike = json['shoplike']?.toInt();
	}
	if (json['recommend'] != null) {
		data.recommend = json['recommend']?.toInt();
	}
	if (json['manystoretaps_ids'] != null) {
		data.manystoretapsIds = json['manystoretaps_ids']?.toString();
	}
	if (json['manystoretaps_text'] != null) {
		data.manystoretapsText = new List<ShopListDataManystoretapsText>();
		(json['manystoretaps_text'] as List).forEach((v) {
			data.manystoretapsText.add(new ShopListDataManystoretapsText().fromJson(v));
		});
	}
	if (json['avatar'] != null) {
		data.avatar = new List<dynamic>();
		data.avatar.addAll(json['avatar']);
	}
	if (json['status_text'] != null) {
		data.statusText = json['status_text']?.toString();
	}
	if (json['spell_status_text'] != null) {
		data.spellStatusText = json['spell_status_text']?.toString();
	}
	return data;
}

Map<String, dynamic> shopListDataToJson(ShopListData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['category_id'] = entity.categoryId;
	data['price'] = entity.price;
	data['original_price'] = entity.originalPrice;
	data['price_title'] = entity.priceTitle;
	data['smallimages'] = entity.smallimages;
	data['shoplike'] = entity.shoplike;
	data['recommend'] = entity.recommend;
	data['manystoretaps_ids'] = entity.manystoretapsIds;
	if (entity.manystoretapsText != null) {
		data['manystoretaps_text'] =  entity.manystoretapsText.map((v) => v.toJson()).toList();
	}
	if (entity.avatar != null) {
		data['avatar'] =  [];
	}
	data['status_text'] = entity.statusText;
	data['spell_status_text'] = entity.spellStatusText;
	return data;
}

shopListDataManystoretapsTextFromJson(ShopListDataManystoretapsText data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['manystore_id'] != null) {
		data.manystoreId = json['manystore_id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	return data;
}

Map<String, dynamic> shopListDataManystoretapsTextToJson(ShopListDataManystoretapsText entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['manystore_id'] = entity.manystoreId;
	data['name'] = entity.name;
	return data;
}