import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable(explicitToJson: true)
class Customer extends Equatable {
  @JsonKey(name: "customerid")
  final String customerID;
  @JsonKey(name: "customername")
  final String customerName;
  @JsonKey(name: "customername_en")
  final String customerNameEN;
  @JsonKey(name: "citizenid")
  final String citizenID;
  @JsonKey(name: "phonenumber")
  final String phoneNumber;
  @JsonKey(name: "type")
  final String type;
  @JsonKey(name: "photopath")
  final String photoPath;

  Customer({
    this.customerID,
    this.customerName,
    this.customerNameEN,
    this.citizenID,
    this.phoneNumber,
    this.type,
    this.photoPath,
  });

  @override
  List<Object> get props => [customerID];

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
