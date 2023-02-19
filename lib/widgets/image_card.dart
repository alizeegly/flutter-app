import 'package:flutter/material.dart';
import 'package:travelapp/models/trip_model.dart';
import 'package:travelapp/screens/trip_detail.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TripDetailPage(
                        trip: trips[index],
                      ),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          bottom: 10
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(trips[index].user.avatar),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              trips[index].user.pseudo,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        trips[index].image,
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                        height: 150,
                      ),
                      const SizedBox(width: 10),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            trips[index].title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.favorite,
                            color: Colors.red.shade700,
                            size: 14
                          ),
                          const SizedBox(width: 7),
                          Text(
                            trips[index].likes.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                            ), 
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            trips[index].location,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.only(bottom: 10)),
        itemCount: trips.length
      ),
    );
  }
}