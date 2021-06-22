// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer(
    customerID: json['customerid'] as String,
    customerName: json['customername'] as String,
    customerNameEN: json['customername_en'] as String,
    citizenID: json['citizenid'] as String,
    phoneNumber: json['phonenumber'] as String,
    type: json['type'] as String,
    photoPath: json['photopath'] as String,
  );
}

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'customerid': instance.customerID,
      'customername': instance.customerName,
      'customername_en': instance.customerNameEN,
      'citizenid': instance.citizenID,
      'phonenumber': instance.phoneNumber,
      'type': instance.type,
      'photopath': instance.photoPath,
    };
