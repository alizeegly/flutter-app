class UserModel {
  String firstName;
  String lastName;
  String pseudo;
  String email;
  String password;
  String avatar;

  UserModel({
    this.firstName = "",
    this.lastName = "",
    required this.pseudo,
    required this.email,
    required this.password,
    this.avatar = "",
  });
}

List<UserModel> users = [
  UserModel(
    firstName: "Alizée",
    lastName: "Gillouaye",
    pseudo: "alizee_gly",
    email: "agillouaye@icloud.com",
    password: "password",
    avatar: "assets/avatar.png"
  ),
  UserModel(
    firstName: "Test",
    lastName: "Test",
    pseudo: "test",
    email: "test@mail.com",
    password: "password",
    avatar: "assets/avatar.png"
  ),
];
