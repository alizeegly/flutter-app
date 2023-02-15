class PlacesTypeModel {
  final String name;
  final String image;

  PlacesTypeModel({
    required this.name,
    required this.image,
  });
}

List<PlacesTypeModel> placesType = [
  PlacesTypeModel(name: "Mountain", image: "assets/icons/mountain.png"),
  PlacesTypeModel(name: "Beach", image: "assets/icons/beach.png"),
  PlacesTypeModel(name: "Forest", image: "assets/icons/forest.png"),
  PlacesTypeModel(name: "City", image: "assets/icons/city.png"),
  PlacesTypeModel(name: "Desert", image: "assets/icons/desert.png"),
];