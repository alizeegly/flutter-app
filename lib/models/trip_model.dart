import 'package:travelapp/models/user_model.dart';

class TripModel {
  final String image;
  final String location;
  final String title;
  final DateTime start;
  final DateTime end;
  final String description;
  final int likes;
  final UserModel user;
  final double lat;
  final double lng;

  TripModel({
    required this.image,
    this.likes = 0,
    required this.title,
    required this.start,
    required this.end,
    this.description = "",
    required this.location,
    required this.user,
    required this.lat,
    required this.lng
  });
}

List<TripModel> trips = [
  TripModel(
    image: "assets/places/place5.jpg",
    title: "Noël Américain",
    start: DateTime(2019, 12, 20),
    end: DateTime(2019, 12, 29),
    description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. \nAenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \nDonec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. \nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. \n In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum",
    likes: 4400,
    location: "New York",
    user: UserModel(pseudo: "alizee_gly", email: "agillouaye@icloud.com", password: "password", avatar: "assets/avatar.png"),
    lat: 22.5448131,
    lng: 88.3403691
  ),
  TripModel(
    image: "assets/places/place4.jpg",
    title: "Noël Américain",
    start: DateTime(2019, 12, 20),
    end: DateTime(2019, 12, 29),
    description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. \nAenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \nDonec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. \nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. \n In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum",
    likes: 241,
    location: "Londres",
    user: UserModel(pseudo: "alizee_gly", email: "agillouaye@icloud.com", password: "password", avatar: "assets/avatar.png"),
    lat: 22.5448131,
    lng: 88.3403691
  ),
  TripModel(
    image: "assets/places/place3.jpg",
    title: "Noël Américain",
    start: DateTime(2019, 12, 20),
    end: DateTime(2019, 12, 29),
    description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. \nAenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \nDonec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. \nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. \n In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum",
    likes: 20,
    location: "Paris",
    user: UserModel(pseudo: "alizee_gly", email: "agillouaye@icloud.com", password: "password", avatar: "assets/avatar.png"),
    lat: 22.5448131,
    lng: 88.3403691
  ),
  TripModel(
    image: "assets/places/place2.jpg",
    title: "Noël Américain",
    start: DateTime(2019, 12, 20),
    end: DateTime(2019, 12, 29),
    description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. \nAenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \nDonec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. \nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. \n In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum",
    likes: 3100,
    location: "Tahiti",
    user: UserModel(pseudo: "alizee_gly", email: "agillouaye@icloud.com", password: "password", avatar: "assets/avatar.png"),
    lat: 22.5448131,
    lng: 88.3403691
  ),
  TripModel(
    image: "assets/places/place1.jpg",
    title: "Noël Américain",
    start: DateTime(2019, 12, 20),
    end: DateTime(2019, 12, 29),
    description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. \nAenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \nDonec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. \nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. \n In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum",
    likes: 18199,
    location: "Sidney",
    user: UserModel(pseudo: "test", email: "test@icloud.com", password: "password", avatar: "assets/avatar.png"),
    lat: 22.5448131,
    lng: 88.3403691
  ),
];
