import 'package:evaluation_task_flutter/screen_widgets/add_ons_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PassengerDetails extends StatefulWidget {
  final String name;
  const PassengerDetails({super.key, required this.name});

  @override
  State<PassengerDetails> createState() => _PassengerDetailsState();
}

TextEditingController passenger1age = TextEditingController();
TextEditingController passenger2age = TextEditingController();

class _PassengerDetailsState extends State<PassengerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
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
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 180,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                color: Color(0xffB5D3F5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "7:30 AM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Form"),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                const DotWidget(
                                  dashColor: Colors.black,
                                  dashHeight: 1,
                                  dashWidth: 5,
                                  totalWidth: 100,
                                ),
                                Image.asset("assets/image/boatTo.png"),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "3:00 PM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("To"),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: List.generate(
                            150 ~/ 3,
                            (index) => Expanded(
                              child: Container(
                                color: index % 2 == 1
                                    ? Colors.transparent
                                    : Colors.grey,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(Icons.account_circle_outlined),
                            SizedBox(width: 8),
                            Text("2 Seats"),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: const Color(
                        0xffFF6666,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Your Tiket information will be sent on this phone number",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            const Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "9624853810",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                  EdgeInsets.all(0),
                                ),
                                backgroundColor: MaterialStatePropertyAll(
                                  Colors.white,
                                ),
                              ),
                              child: const Text("  Edit  "),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Passenger Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 22),
                          const Text(
                            "Passenger 1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Enter Full Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              counterText: "Enter Name as per adahar",
                              contentPadding: EdgeInsets.only(
                                right: 10,
                                left: 10,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                ),
                              ),
                              hintText: "Enter Your Name",
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Enter Your Age",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextField(
                                      maxLength: 2,
                                      controller: passenger1age,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[0-9]')),
                                        FilteringTextInputFormatter.digitsOnly,
                                        FilteringTextInputFormatter.deny(
                                          RegExp(r'^0+'),
                                        ),
                                      ],
                                      decoration: const InputDecoration(
                                        counterText: "",
                                        contentPadding: EdgeInsets.only(
                                            right: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                          ),
                                        ),
                                        hintText: "Enter age",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Gender",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            right: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                          ),
                                        ),
                                        hintText: "Gender",
                                      ),
                                      obscureText: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 18),
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
                          const SizedBox(height: 18),
                          const Text(
                            "Passenger 2",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Enter Full Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              helperMaxLines: 1,
                              helperStyle: TextStyle(
                                decorationStyle: TextDecorationStyle.dotted,
                              ),
                              helperText: "Enter Name as per adahar",
                              contentPadding:
                                  EdgeInsets.only(right: 10, left: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                ),
                              ),
                              hintText: "Enter Your Name",
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Enter Your Age",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextField(
                                      controller: passenger2age,
                                      maxLength: 2,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[0-9]')),
                                        FilteringTextInputFormatter.digitsOnly,
                                        FilteringTextInputFormatter.deny(
                                          RegExp(r'^0+'),
                                        ),
                                      ],
                                      decoration: const InputDecoration(
                                        counterText: "",
                                        contentPadding: EdgeInsets.only(
                                            right: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                          ),
                                        ),
                                        hintText: "Enter age",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Gender",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            right: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                          ),
                                        ),
                                        hintText: "Gender",
                                      ),
                                      obscureText: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
                      if (passenger1age.text.isEmpty ||
                          passenger2age.text.isEmpty) {
                        var snackBar =
                            const SnackBar(content: Text('Fill All Details'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else {
                        if (int.parse(passenger2age.text) >= 0 &&
                            int.parse(passenger2age.text) <= 2) {
                          var snackBar = const SnackBar(
                              content: Text('Requried Minimum Age 3'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else if (int.parse(passenger1age.text) >= 0 &&
                            int.parse(passenger1age.text) <= 2) {
                          var snackBar = const SnackBar(
                              content: Text('Requried Minimum Age 3'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AddOns(
                                name: widget.name,
                              ),
                            ),
                          );
                        }
                      }
                    },
                    child: const Text(
                      "Contine",
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
