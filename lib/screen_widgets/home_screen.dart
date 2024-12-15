import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Colors.blue,
            ),
          ),
          child: const Text(
            'Available Boats',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(
              "/AvailableBoatScreen",
            );
          },
        ),
      ),
    );
  }
}
