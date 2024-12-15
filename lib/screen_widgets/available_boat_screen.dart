import 'package:evaluation_task_flutter/screen_widgets/all_data.dart';
import 'package:evaluation_task_flutter/screen_widgets/boat_info_screen.dart';
import 'package:flutter/material.dart';

class AvailableBoatScreen extends StatefulWidget {
  const AvailableBoatScreen({super.key});

  @override
  State<AvailableBoatScreen> createState() => _AvailableBoatScreenState();
}

class _AvailableBoatScreenState extends State<AvailableBoatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 215, 215, 215),
      appBar: AppBar(
        backgroundColor: const Color(0xff6BA7EB),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Boarding Point",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Wed Jun 20 - 2 Passenger",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.only(
                    right: 18,
                    left: 18,
                  ),
                ),
                side: MaterialStatePropertyAll(
                  BorderSide(
                    width: 1,
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Modify",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.5,
                  blurRadius: 5,
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Showing Available Boats",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            // Expanded moved here
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.sizeOf(context).width,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BoatInfoScreen(
                                image: boatData[index]["image"].toString(),
                                name: boatData[index]["name"].toString(),
                              ),
                            ),
                          ),
                          child: Container(
                            height: 240,
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  boatData[index]["image"].toString(),
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: const EdgeInsets.all(16),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.account_circle_rounded,
                                    ),
                                    Text(
                                      ' ${boatData[index]["seat"].toString()} Seats',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          boatData[index]["name"].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Trip start by 7:10 AM from Hills & journey ends by around 1:00 AM.",
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '₹ ${boatData[index]["price"].toString()} / Adualt',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
