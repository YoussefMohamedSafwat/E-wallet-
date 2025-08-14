
class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String gender;
  String password;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    gender: json["gender"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "gender": gender,
    "password": password,
  };
}

