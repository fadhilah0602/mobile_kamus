import 'dart:convert';

ModelKosakata modelKosakataFromJson(String str) => ModelKosakata.fromJson(json.decode(str));

String modelKosakataToJson(ModelKosakata data) => json.encode(data.toJson());

class ModelKosakata {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelKosakata({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelKosakata.fromJson(Map<String, dynamic> json) => ModelKosakata(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  get kosa_kata => null;

  get arti => null;

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };


}

class Datum {
  String id;
  String kosa_kata;
  String arti;
  DateTime created_at;

  Datum({
    required this.id,
    required this.kosa_kata,
    required this.arti,
    required this.created_at,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    kosa_kata: json["kosa_kata"],
    arti: json["arti"],
    created_at: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "kosa_kata": kosa_kata,
    "arti": arti,
    "created_at": created_at.toIso8601String(),
  };
}





