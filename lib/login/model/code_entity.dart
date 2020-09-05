import 'package:flutter_app_shop/generated/json/base/json_convert_content.dart';

class CodeEntity with JsonConvert<CodeEntity> {
	int code;
	String msg;
	dynamic time;
	dynamic data;
}
