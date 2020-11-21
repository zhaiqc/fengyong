import 'package:flutter_app_shop/detail/creat_order_entity.dart';

creatOrderEntityFromJson(CreatOrderEntity data, Map<String, dynamic> json) {
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
		data.data = new CreatOrderData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> creatOrderEntityToJson(CreatOrderEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['time'] = entity.time;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

creatOrderDataFromJson(CreatOrderData data, Map<String, dynamic> json) {
	if (json['order_sn'] != null) {
		data.orderSn = json['order_sn']?.toString();
	}
	if (json['user_id'] != null) {
		data.userId = json['user_id']?.toInt();
	}
	if (json['shoplist_id'] != null) {
		data.shoplistId = json['shoplist_id']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['spell_num'] != null) {
		data.spellNum = json['spell_num']?.toInt();
	}
	if (json['join_spell_num'] != null) {
		data.joinSpellNum = json['join_spell_num']?.toInt();
	}
	if (json['spell_status'] != null) {
		data.spellStatus = json['spell_status']?.toInt();
	}
	if (json['order_id'] != null) {
		data.orderId = json['order_id']?.toInt();
	}
	if (json['paytimestamp'] != null) {
		data.paytimestamp = json['paytimestamp']?.toInt();
	}
	if (json['createtime'] != null) {
		data.createtime = json['createtime']?.toInt();
	}
	if (json['updatetime'] != null) {
		data.updatetime = json['updatetime']?.toInt();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['status_text'] != null) {
		data.statusText = json['status_text']?.toString();
	}
	if (json['type_text'] != null) {
		data.typeText = json['type_text']?.toString();
	}
	if (json['spell_status_text'] != null) {
		data.spellStatusText = json['spell_status_text']?.toString();
	}
	return data;
}

Map<String, dynamic> creatOrderDataToJson(CreatOrderData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['order_sn'] = entity.orderSn;
	data['user_id'] = entity.userId;
	data['shoplist_id'] = entity.shoplistId;
	data['status'] = entity.status;
	data['type'] = entity.type;
	data['spell_num'] = entity.spellNum;
	data['join_spell_num'] = entity.joinSpellNum;
	data['spell_status'] = entity.spellStatus;
	data['order_id'] = entity.orderId;
	data['paytimestamp'] = entity.paytimestamp;
	data['createtime'] = entity.createtime;
	data['updatetime'] = entity.updatetime;
	data['id'] = entity.id;
	data['status_text'] = entity.statusText;
	data['type_text'] = entity.typeText;
	data['spell_status_text'] = entity.spellStatusText;
	return data;
}