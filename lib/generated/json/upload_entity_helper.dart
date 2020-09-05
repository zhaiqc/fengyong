import 'package:flutter_app_shop/article/model/upload_entity.dart';

uploadEntityFromJson(UploadEntity data, Map<String, dynamic> json) {
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
		data.data = new UploadData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> uploadEntityToJson(UploadEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['time'] = entity.time;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

uploadDataFromJson(UploadData data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['domain_url'] != null) {
		data.domainUrl = json['domain_url']?.toString();
	}
	return data;
}

Map<String, dynamic> uploadDataToJson(UploadData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	data['domain_url'] = entity.domainUrl;
	return data;
}