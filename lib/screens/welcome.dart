import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/screens/home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travelapp/screens/main_page.dart';
// import 'package:travelapp/screens/home.dart';
// import 'package:travelapp/screens/main_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset(
            'assets/logo2.png',
            width: 150,
          )
        ],
      ), 
      nextScreen: const MainPage(),
      splashIconSize: 150,
      duration: 3000,
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.leftToRight,
      animationDuration: const Duration(seconds: 1),
    );
  }
}






// Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 const Spacer(),
//                 Image.asset(
//                   'assets/logo2.png',
//                   width: 150,
//                 ),
                
//                 const Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 30),
//                   child: SizedBox(
//                     width: 200,
//                     child: ElevatedButton(
//                       onPressed: () {Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const HomeScreen()),
//                       );},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Theme.of(context).primaryColor,
//                         side: BorderSide.none,
//                         shape: const StadiumBorder()
//                       ),
//                       child: const Text(
//                         "Get started", 
//                         style: TextStyle(
//                           color: Colors.white, 
//                           fontWeight: FontWeight.w600
//                         )
//                       )
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );