import 'package:flutter/material.dart';
import 'package:travelapp/models/trip_model.dart';
import 'package:image_picker/image_picker.dart';

class MyTripsScreen extends StatefulWidget {
  MyTripsScreen({Key? key}) : super(key: key);

  @override
  State<MyTripsScreen> createState() => _MyTripsState();
}

class _MyTripsState extends State<MyTripsScreen> {
  final tripsList = trips;
  final tripController = TextEditingController();

  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("Create a new trip")
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: tripController,
              decoration: const InputDecoration(label: Text("Title"))
            ),
            const SizedBox(height: 20),
            TextField(
              controller: tripController,
              decoration: const InputDecoration(label: Text("Location"))
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                image = await ImagePicker().pickImage(
                  source: ImageSource.gallery
                );
                if (image == null) {
                  return;
                }
                final imagetemp = XFile(image!.path);

                setState(() {
                  image = imagetemp;
                });
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                side: BorderSide.none,
                shape: const StadiumBorder()
              ),
              child: const Text("Pick Image", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
            ),
          ],
        )
      )
    );
  }
}