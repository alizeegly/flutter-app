import 'package:flutter/material.dart';
import 'package:travelapp/models/places_type_model.dart';

class TypePlaces extends StatelessWidget {
  const TypePlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Chip(
            label: Text(placesType[index].name),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(placesType[index].image),
            ),
            backgroundColor: Colors.white,
            elevation: 0.4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          );
        },
        separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: placesType.length,
      ),
    );
  }
}