// import 'package:flutter/material.dart';
// import 'package:travelapp/models/trip_model.dart';

// class ImageCard extends StatelessWidget {
//   const ImageCard({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return Card(
//       elevation: 0.4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             // Text("hey")
//             Image.asset(
//               "assets/places/place3.jpg",
//               width: double.maxFinite,
//               fit: BoxFit.cover,
//               height: 150,
//             ),
//             const SizedBox(width: 10),
//             const SizedBox(height: 10),
//             Row(
//               children: [
//                 const Text(
//                   "Paris 2022",
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const Spacer(),
//                 Icon(
//                   Icons.star,
//                   color: Colors.yellow.shade700,
//                   size: 14,
//                 ),
//                 const Text(
//                   "4.4",
//                   style: TextStyle(
//                     fontSize: 12,
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(height: 5),
//             Row(
//               children: [
//                 Icon(
//                   Icons.location_on_rounded,
//                   color: Theme.of(context).primaryColor,
//                   size: 16,
//                 ),
//                 const SizedBox(width: 5),
//                 const Text(
//                   "Paris",
//                   style: TextStyle(
//                     fontSize: 12,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'package:travelapp/models/trip_model.dart';

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
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
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
                          trips[index].location,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.thumb_up,
                          color: Colors.yellow.shade700,
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
          );
        },
        separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.only(bottom: 10)),
        itemCount: trips.length
      ),
    );
  }
}