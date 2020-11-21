import 'package:flutter_app_shop/detail/article_list_entity.dart';
import 'package:flutter_app_shop/generated/json/base/json_filed.dart';

articleListEntityFromJson(ArticleListEntity data, Map<String, dynamic> json) {
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
		data.data = new List<ArticleListData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new ArticleListData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> articleListEntityToJson(ArticleListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['time'] = entity.time;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

articleListDataFromJson(ArticleListData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['shoplist_id'] != null) {
		data.shoplistId = json['shoplist_id']?.toInt();
	}
	if (json['user_id'] != null) {
		data.userId = json['user_id']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title'];
	}
	if (json['likenum'] != null) {
		data.likenum = json['likenum']?.toInt();
	}
	if (json['createtime'] != null) {
		data.createtime = json['createtime']?.toInt();
	}
	if (json['smallimages'] != null) {
		data.smallimages = json['smallimages']?.toString();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['nickname'] != null) {
		data.nickname = json['nickname']?.toString();
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar']?.toString();
	}
	if (json['status_text'] != null) {
		data.statusText = json['status_text']?.toString();
	}
	return data;
}

Map<String, dynamic> articleListDataToJson(ArticleListData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['shoplist_id'] = entity.shoplistId;
	data['user_id'] = entity.userId;
	data['title'] = entity.title;
	data['likenum'] = entity.likenum;
	data['createtime'] = entity.createtime;
	data['smallimages'] = entity.smallimages;
	data['content'] = entity.content;
	data['nickname'] = entity.nickname;
	data['avatar'] = entity.avatar;
	data['status_text'] = entity.statusText;
	return data;
}