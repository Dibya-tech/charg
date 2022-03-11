import 'package:charge/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  final Color _primaryColor = HexColor('#DC54FE');
  final Color _accentColor = HexColor('#8A02AE');

  const LoginUiApp({Key? key}) : super(key: key);

  // Design color
  // Color _primaryColor= HexColor('#FFC867');
  // Color _accentColor= HexColor('#FF3CBD');

  // Our Logo Color
  // Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  //Color _primaryColor= HexColor('#651BD2');
  //Color _accentColor= HexColor('#320181');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charge-IT',
      theme: ThemeData(
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
            .copyWith(secondary: _accentColor),
      ),
      home: const SplashScreen(),
    );
  }
}
