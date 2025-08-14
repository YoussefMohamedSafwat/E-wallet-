class Category {
  String name;
  String amount;

  Category({required this.name, required this.amount});

  factory Category.fromJson(Map<String, dynamic> json) =>
      Category(name: json["name"], amount: json["amount"]);

  Map<String, dynamic> toJson() => {"name": name, "amount": amount};
}

class RecentExpense {
  String title;
  String date;
  String amount;

  RecentExpense({
    required this.title,
    required this.date,
    required this.amount,
  });

  factory RecentExpense.fromJson(Map<String, dynamic> json) => RecentExpense(
    title: json["title"],
    date: json["date"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "date": date,
    "amount": amount,
  };
}

class Summary {
  String balance;
  String creditcard;
  String income;
  String expenses;

  Summary({
    required this.balance,
    required this.creditcard,
    required this.income,
    required this.expenses,
  });

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
    balance: json["balance"],
    creditcard: json["creditcard"],
    income: json["income"],
    expenses: json["expenses"],
  );

  Map<String, dynamic> toJson() => {
    "balance": balance,
    "creditcard": creditcard,
    "income": income,
    "expenses": expenses,
  };
}
class Weekly {
  String day;
  String income;
  String expense;

  Weekly({required this.day, required this.income, required this.expense});

  factory Weekly.fromJson(Map<String, dynamic> json) => Weekly(
    day: json["day"],
    income: json["income"],
    expense: json["expense"],
  );

  Map<String, dynamic> toJson() => {
    "day": day,
    "income": income,
    "expense": expense,
  };
}
