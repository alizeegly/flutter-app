import 'package:flutter/material.dart';
import 'package:travelapp/models/trip_model.dart';
import 'package:intl/intl.dart';

class TripDetailPage extends StatelessWidget {
  const TripDetailPage({
    Key? key,
    required this.trip,
  }) : super(key: key);

  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(trip.image),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () { Navigator.pop(context); },
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black54,
                )
              ),
            ),
          ),
          scroll(),
        ],
      ),
    )
  );
}



  scroll() {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    trip.title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    DateFormat("d MMMM").format(trip.start) + " - " + DateFormat("d MMMM").format(trip.end),
                    style: Theme.of(context).textTheme.bodyMedium
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(trip.user.avatar),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        trip.user.pseudo,
                        style: Theme.of(context).textTheme.bodyMedium
                      ),
                      const Spacer(),
                      Icon(
                        Icons.favorite,
                        color: Colors.red.shade700,
                        size: 25
                      ),
                      const SizedBox(width: 7),
                      Text(
                        trip.likes.toString(),
                        style: Theme.of(context).textTheme.bodyMedium
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    trip.description,
                    style: const TextStyle(
                      color: Colors.grey
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  // Text(
                  //   "Location",
                  //   style: TextStyle(
                  //     color: Theme.of(context).primaryColor,
                  //     fontSize: 20
                  //   ),
                  // ),
                  // const SizedBox(height: 10,),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => MapScreen(lat: trip.lat, lng: trip.lng)
                  //         // builder: (context) => MapScreen()
                  //       ),
                  //     );
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     elevation: 0,
                  //     shape: const StadiumBorder(),
                  //     padding: const EdgeInsets.symmetric(
                  //       vertical: 15,
                  //       horizontal: 8.0,
                  //     ),
                  //   ),
                  //   child: const Text("See Location"),
                  // ),
                ],
              ),
            ),
          );
        });
  }
}