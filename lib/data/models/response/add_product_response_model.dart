// import 'package:flutter_pos_renald/data/models/response/product_response_model.dart';
// import 'package:meta/meta.dart';
// import 'dart:convert';

// class AddProductResponseModel {
//   final bool success;
//   final String message;
//   final Product data;

//   AddProductResponseModel({
//     required this.success,
//     required this.message,
//     required this.data,
//   });

//   factory AddProductResponseModel.fromRawJson(String str) =>
//       AddProductResponseModel.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory AddProductResponseModel.fromJson(Map<String, dynamic> json) =>
//       AddProductResponseModel(
//         success: json["success"],
//         message: json["message"],
//         data: Product.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "success": success,
//         "message": message,
//         "data": data.toJson(),
//       };
// }

import 'package:flutter_pos_renald/data/models/response/product_response_model.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

class AddProductResponseModel {
  final bool success;
  final String message;
  final Product data;

  AddProductResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory AddProductResponseModel.fromJson(String str) =>
      AddProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddProductResponseModel.fromMap(Map<String, dynamic> json) =>
      AddProductResponseModel(
        success: json["success"],
        message: json["message"],
        data: Product.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": data.toMap(),
      };
}
