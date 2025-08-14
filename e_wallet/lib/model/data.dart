import 'dart:convert';

import 'package:e_wallet/model/summary.dart';
import 'package:e_wallet/model/user.dart';

List<Data> DataFromJson(String str) =>
    List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String DataToJson(List<Data> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  User user;
  Summary summary;
  List<Weekly> weekly;
  List<Category> categories;
  List<RecentExpense> recentExpenses;

  Data({
    required this.user,
    required this.summary,
    required this.weekly,
    required this.categories,
    required this.recentExpenses,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    user: User.fromJson(json["user"]),
    summary: Summary.fromJson(json["summary"]),
    weekly: List<Weekly>.from(json["weekly"].map((x) => Weekly.fromJson(x))),
    categories: List<Category>.from(
      json["categories"].map((x) => Category.fromJson(x)),
    ),
    recentExpenses: List<RecentExpense>.from(
      json["recent_expenses"].map((x) => RecentExpense.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
    "summary": summary.toJson(),
    "weekly": List<dynamic>.from(weekly.map((x) => x.toJson())),
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "recent_expenses": List<dynamic>.from(
      recentExpenses.map((x) => x.toJson()),
    ),
  };
}
