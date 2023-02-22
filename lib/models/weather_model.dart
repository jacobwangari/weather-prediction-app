import 'dart:convert';
import 'package:jacmwas_weather_app/models/data.dart';
import 'package:jacmwas_weather_app/models/warnings.dart';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  Weather({
    required this.data,
    required this.warnings,
  });

  Data data;

  List<Warning> warnings;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        data: Data.fromJson(json["data"]),
        warnings: json["warnings"] != null ? List<Warning>.from(
            json["warnings"].map((x) => Warning.fromJson(x))) : [],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "warnings": List<dynamic>.from(warnings.map((x) => x.toJson())),
      };
}








