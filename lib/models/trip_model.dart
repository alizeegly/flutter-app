class TripModel {
  final String image;
  final String location;
  final double likes;

  TripModel({
    required this.image,
    required this.likes,
    required this.location,
  });
}

List<TripModel> trips = [
  TripModel(
    image: "assets/places/place5.jpg",
    likes: 4.4,
    location: "New York",
  ),
  TripModel(
    image: "assets/places/place4.jpg",
    likes: 4.1,
    location: "Londres",
  ),
  TripModel(
    image: "assets/places/place3.jpg",
    likes: 2.0,
    location: "Paris",
  ),
  TripModel(
    image: "assets/places/place2.jpg",
    likes: 3.1,
    location: "Tahiti",
  ),
  TripModel(
    image: "assets/places/place1.jpg",
    likes: 1.8,
    location: "Sidney",
  ),
];
