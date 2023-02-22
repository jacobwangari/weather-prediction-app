

import 'package:jacmwas_weather_app/models/timelines.dart';


class Data {
  Data({
    required this.timelines,
  });

  List<Timeline> timelines;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        timelines: List<Timeline>.from(
            json["timelines"].map((x) => Timeline.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "timelines": List<dynamic>.from(timelines.map((x) => x.toJson())),
      };
}