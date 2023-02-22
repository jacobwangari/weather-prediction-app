import 'package:jacmwas_weather_app/models/values.dart';

class Interval {
  Interval({
    required this.startTime,
    required this.values,
  });

  DateTime startTime;

  Values values;

  factory Interval.fromJson(Map<String, dynamic> json) => Interval(
        startTime: DateTime.parse(json["startTime"]),
        values: Values.fromJson(json["values"]),
      );

  Map<String, dynamic> toJson() => {
        "startTime": startTime.toIso8601String(),
        "values": values.toJson(),
      };
}