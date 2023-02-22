class Values {
  Values({
    required this.windSpeed,
    required this.windDirection,
    required this.temperature,
    required this.temperatureApparent,
    required this.weatherCode,
    required this.humidity,
    required this.visibility,
    required this.dewPoint,
    required this.precipitationType,
    required this.cloudCover,
  });

  double windSpeed;

  double windDirection;

  double temperature;

  double temperatureApparent;

  int weatherCode;

  double humidity;

  double visibility;

  double dewPoint;

  int precipitationType;

  double cloudCover;

  factory Values.fromJson(Map<String, dynamic> json) => Values(
        windSpeed: json["windSpeed"].toDouble(),
        windDirection: json["windDirection"].toDouble(),
        temperature: json["temperature"].toDouble(),
        temperatureApparent: json["temperatureApparent"].toDouble(),
        weatherCode: json["weatherCode"],
        humidity: json["humidity"].toDouble(),
        visibility: json["visibility"].toDouble(),
        dewPoint: json["dewPoint"].toDouble(),
        precipitationType: json["precipitationType"],
        cloudCover: json["cloudCover"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "windSpeed": windSpeed,
        "windDirection": windDirection,
        "temperature": temperature,
        "temperatureApparent": temperatureApparent,
        "weatherCode": weatherCode,
        "humidity": humidity,
        "visibility": visibility,
        "dewPoint": dewPoint,
        "precipitationType": precipitationType,
        "cloudCover": cloudCover,
      };
}
