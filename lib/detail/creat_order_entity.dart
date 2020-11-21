import 'package:flutter_app_shop/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_shop/generated/json/base/json_field.dart';

class CreatOrderEntity with JsonConvert<CreatOrderEntity> {
	int code;
	String msg;
	String time;
	CreatOrderData data;
}

class CreatOrderData with JsonConvert<CreatOrderData> {
	@JSONField(name: "order_sn")
	String orderSn;
	@JSONField(name: "user_id")
	int userId;
	@JSONField(name: "shoplist_id")
	int shoplistId;
	int status;
	String type;
	@JSONField(name: "spell_num")
	int spellNum;
	@JSONField(name: "join_spell_num")
	int joinSpellNum;
	@JSONField(name: "spell_status")
	int spellStatus;
	@JSONField(name: "order_id")
	int orderId;
	int paytimestamp;
	int createtime;
	int updatetime;
	String id;
	@JSONField(name: "status_text")
	String statusText;
	@JSONField(name: "type_text")
	String typeText;
	@JSONField(name: "spell_status_text")
	String spellStatusText;
}
