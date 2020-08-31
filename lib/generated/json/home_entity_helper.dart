import 'package:flutter_app_shop/home/model/home_entity.dart';

homeEntityFromJson(HomeEntity data, Map<String, dynamic> json) {
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
		data.data = new HomeData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> homeEntityToJson(HomeEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['time'] = entity.time;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

homeDataFromJson(HomeData data, Map<String, dynamic> json) {
	if (json['class'] != null) {
		data.xClass = new List<HomeDataClas>();
		(json['class'] as List).forEach((v) {
			data.xClass.add(new HomeDataClas().fromJson(v));
		});
	}
	if (json['banner'] != null) {
		data.banner = new List<HomeDataBanner>();
		(json['banner'] as List).forEach((v) {
			data.banner.add(new HomeDataBanner().fromJson(v));
		});
	}
	if (json['shopList'] != null) {
		data.shopList = new List<HomeDataShopList>();
		(json['shopList'] as List).forEach((v) {
			data.shopList.add(new HomeDataShopList().fromJson(v));
		});
	}
	if (json['article'] != null) {
		data.article = new List<dynamic>();
		data.article.addAll(json['article']);
	}
	return data;
}

Map<String, dynamic> homeDataToJson(HomeData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.xClass != null) {
		data['class'] =  entity.xClass.map((v) => v.toJson()).toList();
	}
	if (entity.banner != null) {
		data['banner'] =  entity.banner.map((v) => v.toJson()).toList();
	}
	if (entity.shopList != null) {
		data['shopList'] =  entity.shopList.map((v) => v.toJson()).toList();
	}
	if (entity.article != null) {
		data['article'] =  [];
	}
	return data;
}

homeDataClasFromJson(HomeDataClas data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['pid'] != null) {
		data.pid = json['pid']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['flag'] != null) {
		data.flag = json['flag']?.toString();
	}
	if (json['type_text'] != null) {
		data.typeText = json['type_text']?.toString();
	}
	if (json['flag_text'] != null) {
		data.flagText = json['flag_text']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDataClasToJson(HomeDataClas entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['pid'] = entity.pid;
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['flag'] = entity.flag;
	data['type_text'] = entity.typeText;
	data['flag_text'] = entity.flagText;
	return data;
}

homeDataBannerFromJson(HomeDataBanner data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['jump_address'] != null) {
		data.jumpAddress = json['jump_address']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['createtime'] != null) {
		data.createtime = json['createtime']?.toInt();
	}
	if (json['updatetime'] != null) {
		data.updatetime = json['updatetime']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toString();
	}
	if (json['status_text'] != null) {
		data.statusText = json['status_text']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDataBannerToJson(HomeDataBanner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['jump_address'] = entity.jumpAddress;
	data['image'] = entity.image;
	data['createtime'] = entity.createtime;
	data['updatetime'] = entity.updatetime;
	data['status'] = entity.status;
	data['status_text'] = entity.statusText;
	return data;
}

homeDataShopListFromJson(HomeDataShopList data, Map<String, dynamic> json) {
	if (json['className'] != null) {
		data.className = json['className']?.toString();
	}
	if (json['shopList'] != null) {
		data.shopList = new List<HomeDataShopListShopList>();
		(json['shopList'] as List).forEach((v) {
			data.shopList.add(new HomeDataShopListShopList().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> homeDataShopListToJson(HomeDataShopList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['className'] = entity.className;
	if (entity.shopList != null) {
		data['shopList'] =  entity.shopList.map((v) => v.toJson()).toList();
	}
	return data;
}

homeDataShopListShopListFromJson(HomeDataShopListShopList data, Map<String, dynamic> json) {
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
		data.mianzecontent = json['mianzecontent'];
	}
	if (json['manystoretaps_text'] != null) {
		data.manystoretapsText = new List<HomeDataShopListShopListManystoretapsText>();
		(json['manystoretaps_text'] as List).forEach((v) {
			data.manystoretapsText.add(new HomeDataShopListShopListManystoretapsText().fromJson(v));
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

Map<String, dynamic> homeDataShopListShopListToJson(HomeDataShopListShopList entity) {
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

homeDataShopListShopListManystoretapsTextFromJson(HomeDataShopListShopListManystoretapsText data, Map<String, dynamic> json) {
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

Map<String, dynamic> homeDataShopListShopListManystoretapsTextToJson(HomeDataShopListShopListManystoretapsText entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['manystore_id'] = entity.manystoreId;
	data['name'] = entity.name;
	return data;
}