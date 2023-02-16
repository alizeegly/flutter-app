import 'package:flutter/material.dart';
import 'package:travelapp/widgets/custom_icon_button.dart';
import 'package:travelapp/widgets/image_card.dart';
import 'package:travelapp/widgets/location_card.dart';
import 'package:travelapp/widgets/places_type.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Good Morning"),
            Text(
              "alizee_gly",
              style: Theme.of(context).textTheme.labelMedium ,  
            )
          ]
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12),
            child: CustomIconButton(icon: Icon(Icons.search_outlined)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12),
            child: CustomIconButton(icon: Icon(Icons.notifications_outlined))
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: const [
          LocationCard(),
          SizedBox(height: 15),
          TypePlaces(),
          SizedBox(height: 15),
          ImageCard()
        ],
      ),
    );
  }
}