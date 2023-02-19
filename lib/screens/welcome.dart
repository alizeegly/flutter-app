import 'package:flutter/material.dart';
import 'package:travelapp/screens/home.dart';
import 'package:travelapp/screens/main_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  'assets/logo2.png',
                  width: 150,
                ),
                
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder()
                      ),
                      child: const Text(
                        "Get started", 
                        style: TextStyle(
                          color: Colors.white, 
                          fontWeight: FontWeight.w600
                        )
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}