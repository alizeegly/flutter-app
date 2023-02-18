import 'package:flutter/material.dart';
import 'package:travelapp/models/user_model.dart';
import 'package:travelapp/screens/update_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("Profile")
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(users[0].avatar),
                ),
              ),
              const SizedBox(height: 10),
              Text(users[0].firstName + " " + users[0].lastName, style: Theme.of(context).textTheme.headlineSmall),
              Text(users[0].email, style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),


              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UpdateProfileScreen()),
                  );},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    side: BorderSide.none,
                    shape: const StadiumBorder()
                  ),
                  child: const Text("Edit Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),


              

            ]
          ),
        ),
      )
    );
  }
}