import 'package:flutter/material.dart';
import 'package:travelapp/models/user_model.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerFirstName = TextEditingController();
    controllerFirstName.text = users[0].firstName;

    final controllerLastName = TextEditingController();
    controllerLastName.text = users[0].lastName;

    final controllerEmail = TextEditingController();
    controllerEmail.text = users[0].email;

    final controllerPassword = TextEditingController();
    controllerPassword.text = users[0].password;
    // String lastname = users[0].lastName;
    // String email = users[0].email;
    // String password = users[0].password;

    final formData = GlobalKey<FormState>();

    
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
              const SizedBox(height: 50),


              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(label: Text("Fist Name"), prefixIcon: Icon(Icons.person_outline)),
                      validator:(value) {
                        if(value == null || value.isEmpty){
                          return 'First Name is required';
                        }
                        return null;
                      },
                      controller: controllerFirstName,
                      onSaved: (String? value) {

                        users[0].firstName = value!;
                      },
                    ),
                    
                    const SizedBox(height: 20),

                    TextFormField(
                      decoration: const InputDecoration(label: Text("Last Name"), prefixIcon: Icon(Icons.person_outline)),
                      validator:(value) {
                        if(value == null || value.isEmpty){
                          return 'Last Name is required';
                        }
                        return null;
                      },
                      controller: controllerLastName,
                      onSaved: (String? value) {
                        users[0].lastName = value!;
                      },
                    ),
                    
                    const SizedBox(height: 20),

                    TextFormField(
                      decoration: const InputDecoration(label: Text("Email"), prefixIcon: Icon(Icons.email_outlined)),
                      validator:(value) {
                        if(value == null || value.isEmpty){
                          return 'Email is required';
                        }
                        if (!RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?").hasMatch(value)) {
                          return 'Please enter a valid email Address';
                        }

                        return null;
                      },
                      controller: controllerEmail,
                      onSaved: (String? value) {
                        users[0].email = value!;
                      },
                    ),
                    
                    const SizedBox(height: 20),

                    TextFormField(
                      decoration: const InputDecoration(label: Text("Password"), prefixIcon: Icon(Icons.private_connectivity_rounded)),
                      validator:(value) {
                        if(value == null || value.isEmpty){
                          return 'Password is required';
                        }
                        return null;
                      },
                      controller: controllerPassword,
                      onSaved: (String? value) {
                        users[0].password = value!;
                      },
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          // if (formData.currentState!.validate()) {
                          //   formData.currentState!.save();
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Processing Data')),
                          //   );
                          // }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          side: BorderSide.none,
                          shape: const StadiumBorder()
                        ),
                        child: const Text("Edit Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
                      ),
                    ),
                  ],
                )
              )
            ]
          )
        ),
      ),
    );
  }
}