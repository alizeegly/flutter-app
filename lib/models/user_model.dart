class UserModel {
  String firstName;
  String lastName;
  String email;
  String password;
  String avatar;

  UserModel({
    this.firstName = "",
    this.lastName = "",
    required this.email,
    required this.password,
    this.avatar = "",
  });
}

List<UserModel> users = [
  UserModel(
    firstName: "Alizée",
    lastName: "Gillouaye",
    email: "agillouaye@icloud.com",
    password: "password",
    avatar: "assets/avatar.png"
  ),
  UserModel(
    firstName: "Test",
    lastName: "Test",
    email: "test@mail.com",
    password: "password"
  ),
];
