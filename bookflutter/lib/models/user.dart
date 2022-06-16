class User {
  late String name;
  late String userID;
  late String phone;
  late String email;
  late String username;

  User({
    required this.name,
    required this.userID,
    required this.phone,
    required this.email,
    required this.username,
  });

  Map<String, dynamic> toJson() =>
      {
        "name": name,
        "userID": userID,
        "phone": phone,
        "email": email,
        "username": username

        //   "email": "john@example.com"
      };



        //   "email": "john@example.com"

}