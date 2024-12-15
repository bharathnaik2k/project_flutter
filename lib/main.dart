import 'package:evaluation_task_flutter/screen_widgets/available_boat_screen.dart';
import 'package:evaluation_task_flutter/screen_widgets/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "montserrat_regular",
      ),
      initialRoute: "/HomeScreen",
      routes: {
        "/HomeScreen": (context) => const HomeScreen(),
        "/AvailableBoatScreen": (context) => const AvailableBoatScreen(),
        "/BoatInfoScreen": (context) => const AvailableBoatScreen(),
        "/PassengerDetailScreen": (context) => const AvailableBoatScreen(),
        "/AddOnsScreen": (context) => const AvailableBoatScreen(),
        "/AddOns2Screen": (context) => const AvailableBoatScreen(),
      },
    );
  }
}
