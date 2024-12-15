import 'package:evaluation_task_flutter/screen_widgets/passenger_detail_screen.dart';
import 'package:flutter/material.dart';

class BoatInfoScreen extends StatefulWidget {
  final String image;
  final String name;

  const BoatInfoScreen({super.key, required this.image, required this.name});

  @override
  State<BoatInfoScreen> createState() => _BoatInfoScreenState();
}

class _BoatInfoScreenState extends State<BoatInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(
          fill: 0.8,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.white,
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "This hotel features air-conditioned cabins, plush seating,"
                    "and an onboard dining area serving delicious local cuisine.",
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Wed, Jun 20 - 2 Passengers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: List.generate(
                      150 ~/ 3,
                      (index) => Expanded(
                        child: Container(
                          color: index % 2 == 1
                              ? Colors.transparent
                              : Colors.black,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Americans",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("- clean restrooms"),
                  const Text("- comfortable sitting"),
                  const Text("- onbording dinning"),
                  const SizedBox(height: 12),
                  Row(
                    children: List.generate(
                      150 ~/ 3,
                      (index) => Expanded(
                        child: Container(
                          color: index % 2 == 1
                              ? Colors.transparent
                              : Colors.black,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Saftey Fetures",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("- Live Jecket for all Passengers"),
                  const Text("- emgergency medical kit"),
                  const SizedBox(height: 12),
                  Row(
                    children: List.generate(
                      150 ~/ 3,
                      (index) => Expanded(
                        child: Container(
                          color: index % 2 == 1
                              ? Colors.transparent
                              : Colors.black,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Special Notes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("- please arrive 30 minites"),
                  const Text("- carry a Valid card"),
                  const SizedBox(height: 26),
                  TextButton(
                    style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(
                        Size(
                          double.infinity,
                          42,
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xffFDD951),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PassengerDetails(
                            name: widget.name,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      "Go To Passenger Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
