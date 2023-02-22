import 'package:jacmwas_weather_app/models/interval.dart';
import 'package:jacmwas_weather_app/models/weather_model.dart';

class Timeline {
  Timeline({
    required this.timestep,
    required this.startTime,
    required this.endTime,
    required this.intervals,
  });

  String timestep;

  DateTime startTime;

  DateTime endTime;

  List<Interval> intervals;

  factory Timeline.fromJson(Map<String, dynamic> json) => Timeline(
        timestep: json["timestep"],
        startTime: DateTime.parse(json["startTime"]),
        endTime: DateTime.parse(json["endTime"]),
        intervals: List<Interval>.from(
            json["intervals"].map((x) => Interval.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "timestep": timestep,
        "startTime": startTime.toIso8601String(),
        "endTime": endTime.toIso8601String(),
        "intervals": List<dynamic>.from(intervals.map((x) => x.toJson())),
      };
}