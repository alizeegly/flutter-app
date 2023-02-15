class TripModel {
  final String image;
  final String location;
  final double stars;

  TripModel({
    required this.image,
    required this.stars,
    required this.location,
  });
}

List<TripModel> trips = [
  TripModel(
    image: "assets/places/place5.jpg",
    stars: 4.4,
    location: "New York",
  ),
  TripModel(
    image: "assets/places/place4.jpg",
    stars: 4.1,
    location: "Paris",
  ),
  TripModel(
    image: "assets/places/place3.jpg",
    stars: 2.0,
    location: "Londres",
  ),
  TripModel(
    image: "assets/places/place2.jpg",
    stars: 3.1,
    location: "Tahiti",
  ),
  TripModel(
    image: "assets/places/place1.jpg",
    stars: 1.8,
    location: "Hong Kong",
  ),
];
