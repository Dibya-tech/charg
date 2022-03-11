import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

import 'login/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _SplashScreenState() {
    Timer(const Duration(seconds: 6), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const LoginPage()),
            (route) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Returns the size of the device
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).primaryColor
          ],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/lottie/car.json',
            width: size.width,
          ),
          // const Text(
          //   "Plugging you in...",
          //   style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }
}
//   Widget build(BuildContext context) {
//     // Returns the size of the device
//     Size size = MediaQuery.of(context).size;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Lottie.asset(
//           'assets/lottie/car.json',
//           width: size.width,
//         ),
//         const Text(
//           "Plugging you in...",
//           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }
