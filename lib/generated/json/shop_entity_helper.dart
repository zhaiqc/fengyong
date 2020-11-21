import 'package:flutter_app_shop/home/model/shop_entity.dart';
import 'package:flutter_app_shop/generated/json/base/json_filed.dart';

shopEntityFromJson(ShopEntity data, Map<String, dynamic> json) {
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
		data.data = new ShopData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> shopEntityToJson(ShopEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['time'] = entity.time;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

shopDataFromJson(ShopData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['subtitle'] != null) {
		data.subtitle = json['subtitle']?.toString();
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
	if (json['status'] != null) {
		data.status = json['status']?.toString();
	}
	if (json['spell_status'] != null) {
		data.spellStatus = json['spell_status']?.toString();
	}
	if (json['spell_num'] != null) {
		data.spellNum = json['spell_num']?.toInt();
	}
	if (json['createtime'] != null) {
		data.createtime = json['createtime']?.toInt();
	}
	if (json['updatetime'] != null) {
		data.updatetime = json['updatetime']?.toInt();
	}
	if (json['manystore_id'] != null) {
		data.manystoreId = json['manystore_id']?.toInt();
	}
	if (json['setmeal_ids'] != null) {
		data.setmealIds = json['setmeal_ids']?.toString();
	}
	if (json['manystoretaps_ids'] != null) {
		data.manystoretapsIds = json['manystoretaps_ids']?.toString();
	}
	if (json['attachfile'] != null) {
		data.attachfile = json['attachfile']?.toString();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['rightsandinterestscontent'] != null) {
		data.rightsandinterestscontent = json['rightsandinterestscontent']?.toString();
	}
	if (json['mianzecontent'] != null) {
		data.mianzecontent = json['mianzecontent']?.toString();
	}
	if (json['introduction'] != null) {
		data.introduction = json['introduction']?.toString();
	}
	if (json['setmeal'] != null) {
		data.setmeal = new List<ShopDataSetmeal>();
		(json['setmeal'] as List).forEach((v) {
			data.setmeal.add(new ShopDataSetmeal().fromJson(v));
		});
	}
	if (json['manystoretaps'] != null) {
		data.manystoretaps = new List<ShopDataManystoretap>();
		(json['manystoretaps'] as List).forEach((v) {
			data.manystoretaps.add(new ShopDataManystoretap().fromJson(v));
		});
	}
	if (json['manystore'] != null) {
		data.manystore = new ShopDataManystore().fromJson(json['manystore']);
	}
	if (json['status_text'] != null) {
		data.statusText = json['status_text']?.toString();
	}
	if (json['spell_status_text'] != null) {
		data.spellStatusText = json['spell_status_text']?.toString();
	}
	return data;
}

Map<String, dynamic> shopDataToJson(ShopData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['subtitle'] = entity.subtitle;
	data['category_id'] = entity.categoryId;
	data['price'] = entity.price;
	data['original_price'] = entity.originalPrice;
	data['price_title'] = entity.priceTitle;
	data['smallimages'] = entity.smallimages;
	data['shoplike'] = entity.shoplike;
	data['recommend'] = entity.recommend;
	data['status'] = entity.status;
	data['spell_status'] = entity.spellStatus;
	data['spell_num'] = entity.spellNum;
	data['createtime'] = entity.createtime;
	data['updatetime'] = entity.updatetime;
	data['manystore_id'] = entity.manystoreId;
	data['setmeal_ids'] = entity.setmealIds;
	data['manystoretaps_ids'] = entity.manystoretapsIds;
	data['attachfile'] = entity.attachfile;
	data['content'] = entity.content;
	data['rightsandinterestscontent'] = entity.rightsandinterestscontent;
	data['mianzecontent'] = entity.mianzecontent;
	data['introduction'] = entity.introduction;
	if (entity.setmeal != null) {
		data['setmeal'] =  entity.setmeal.map((v) => v.toJson()).toList();
	}
	if (entity.manystoretaps != null) {
		data['manystoretaps'] =  entity.manystoretaps.map((v) => v.toJson()).toList();
	}
	if (entity.manystore != null) {
		data['manystore'] = entity.manystore.toJson();
	}
	data['status_text'] = entity.statusText;
	data['spell_status_text'] = entity.spellStatusText;
	return data;
}

shopDataSetmealFromJson(ShopDataSetmeal data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['configjson'] != null) {
		data.configjson = new List<ShopDataSetmealConfigjson>();
		(json['configjson'] as List).forEach((v) {
			data.configjson.add(new ShopDataSetmealConfigjson().fromJson(v));
		});
	}
	if (json['status_text'] != null) {
		data.statusText = json['status_text']?.toString();
	}
	return data;
}

Map<String, dynamic> shopDataSetmealToJson(ShopDataSetmeal entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	if (entity.configjson != null) {
		data['configjson'] =  entity.configjson.map((v) => v.toJson()).toList();
	}
	data['status_text'] = entity.statusText;
	return data;
}

shopDataSetmealConfigjsonFromJson(ShopDataSetmealConfigjson data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toString();
	}
	return data;
}

Map<String, dynamic> shopDataSetmealConfigjsonToJson(ShopDataSetmealConfigjson entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['price'] = entity.price;
	return data;
}

shopDataManystoretapFromJson(ShopDataManystoretap data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	return data;
}

Map<String, dynamic> shopDataManystoretapToJson(ShopDataManystoretap entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

shopDataManystoreFromJson(ShopDataManystore data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['logo'] != null) {
		data.logo = json['logo']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['tel'] != null) {
		data.tel = json['tel']?.toString();
	}
	if (json['address'] != null) {
		data.address = json['address']?.toString();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['status_text'] != null) {
		data.statusText = json['status_text']?.toString();
	}
	if (json['create_time_text'] != null) {
		data.createTimeText = json['create_time_text']?.toString();
	}
	if (json['update_time_text'] != null) {
		data.updateTimeText = json['update_time_text']?.toString();
	}
	return data;
}

Map<String, dynamic> shopDataManystoreToJson(ShopDataManystore entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['logo'] = entity.logo;
	data['image'] = entity.image;
	data['tel'] = entity.tel;
	data['address'] = entity.address;
	data['content'] = entity.content;
	data['status_text'] = entity.statusText;
	data['create_time_text'] = entity.createTimeText;
	data['update_time_text'] = entity.updateTimeText;
	return data;
}