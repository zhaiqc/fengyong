import 'package:flutter_app_shop/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_shop/generated/json/base/json_filed.dart';

class UploadEntity with JsonConvert<UploadEntity> {
	int code;
	String msg;
	String time;
	UploadData data;
}

class UploadData with JsonConvert<UploadData> {
	String url;
	@JSONField(name: "domain_url")
	String domainUrl;
}
