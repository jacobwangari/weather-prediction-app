class Warning {
  Warning({
    required this.code,
    required this.type,
    required this.message,
  });

  int code;

  String type;

  String message;

  factory Warning.fromJson(Map<String, dynamic> json) => Warning(
        code: json["code"],
        type: json["type"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "type": type,
        "message": message,
      };
}
