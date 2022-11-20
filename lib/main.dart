import 'package:flutter/material.dart';
import 'home.dart';
import 'register.dart';
import 'profile.dart';
import 'appscreen.dart';
import 'userPreferences.dart';
import 'package:sizer/sizer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences().init();
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Home(),
          '/register': (context) => const Register(),
          '/profile': (context) => const Profile(),
          '/appscreen': (context) => const Appscreen(),
        },
        initialRoute: '/',
      );
    }),
  );
}
