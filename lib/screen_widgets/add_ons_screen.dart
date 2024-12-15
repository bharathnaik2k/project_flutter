import 'package:evaluation_task_flutter/screen_widgets/passenger_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddOns extends StatefulWidget {
  final String name;
  const AddOns({super.key, required this.name});

  @override
  State<AddOns> createState() => _AddOnsState();
}

class _AddOnsState extends State<AddOns> {
  int? passenger1price;
  int? passenger2price;
  int? price;
  int carprice = 0;

  bool carBookDone = false,
      careditVisibile = false,
      transportNoteVisible = true,
      privite4carVisible = true,
      privite6carVisible = true,
      sharecarVisible = true,
      breakfast = false,
      pureveg = false,
      purenonveg = false,
      mealseditVisibile = false,
      tourGuideBooked = false,
      tourGuideEditVisibile = false,
      insuranceBooked = false,
      insuranceEditVisibile = false,
      adlut2 = false,
      child2 = false;
  int? total;
  //
  //
  //
  checkAge() {
    if (int.parse(passenger1age.text) >= 0 &&
        int.parse(passenger1age.text) <= 2) {
      passenger1price = 0;
    } else if (int.parse(passenger1age.text) >= 3 &&
        int.parse(passenger1age.text) <= 10) {
      passenger1price = 1000;
    } else {
      passenger1price = 1500;
    }

    if (int.parse(passenger2age.text) >= 0 &&
        int.parse(passenger2age.text) <= 2) {
      passenger2price = 0;
    } else if (int.parse(passenger2age.text) >= 3 &&
        int.parse(passenger2age.text) <= 10) {
      passenger2price = 1000;
    } else {
      passenger2price = 1500;
    }
    setState(() {
      price = passenger1price! + passenger2price!;
      total = price;
    });
    if (price == 3000) {
      setState(() {
        adlut2 = true;
      });
    } else if (price == 2000) {
      setState(() {
        child2 = true;
      });
    }
  }

  @override
  void initState() {
    checkAge();
    super.initState();
  }

  int privite4carprice = 0;
  int privite6carprice = 0;
  int sharecarprice = 0;
  int breakfastprice = 0;
  int purevegprice = 0;
  int purenonvegprice = 0;
  int insuranceprice = 0;
  int tourguideprice = 0;

  totolpricecheck() {
    setState(() {
      total = price! +
          privite4carprice +
          privite6carprice +
          sharecarprice +
          breakfastprice +
          purevegprice +
          purenonvegprice +
          insuranceprice +
          tourguideprice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            CupertinoIcons.xmark,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    Row(
                      children: [
                        const Icon(Icons.account_circle_outlined),
                        const SizedBox(width: 8),
                        const Text(
                          "2 Seats",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        passenger1price == null
                            ? const SizedBox()
                            : Text(
                                "₹ $price",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Additional Service",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text(
                    "Transportion Service",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Visibility(
                    visible: careditVisibile,
                    child: GestureDetector(
                      child: const Text(
                        "Edit",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          transportNoteVisible = true;
                          carBookDone = false;
                          privite4carVisible = true;
                          privite6carVisible = true;
                          sharecarVisible = true;
                          careditVisibile = false;
                          privite4carprice = 0;
                          privite6carprice = 0;
                          sharecarprice = 0;
                          totolpricecheck();
                        });
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Visibility(
                visible: transportNoteVisible,
                child: const Text(
                  "Car Service And Boat Charges And Service cost And Food Acodong for All",
                ),
              ),
              const SizedBox(height: 5),
              Visibility(
                visible: privite4carVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Private Car(4 Seater)"),
                        Text("₹ 500"),
                      ],
                    ),
                    carBookDone == false
                        ? IconButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.blue,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                transportNoteVisible = false;
                                carBookDone = true;
                                privite6carVisible = false;
                                sharecarVisible = false;
                                careditVisibile = true;
                                privite4carprice = 500;
                                totolpricecheck();
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        : IconButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.blue,
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                  ],
                ),
              ),
              Visibility(
                visible: privite6carVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Private Car(6 Seater)"),
                        Text("₹ 500"),
                      ],
                    ),
                    carBookDone == false
                        ? IconButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.blue,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                transportNoteVisible = false;
                                carBookDone = true;
                                privite4carVisible = false;
                                sharecarVisible = false;
                                careditVisibile = true;
                                privite6carprice = 500;
                                totolpricecheck();
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        : IconButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.blue,
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                  ],
                ),
              ),
              Visibility(
                visible: sharecarVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shared Car"),
                        Text("₹ 500"),
                      ],
                    ),
                    carBookDone == false
                        ? IconButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.blue,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                transportNoteVisible = false;
                                carBookDone = true;
                                privite4carVisible = false;
                                privite6carVisible = false;
                                careditVisibile = true;
                                sharecarprice = 500;
                                totolpricecheck();
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        : IconButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.blue,
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: List.generate(
                  150 ~/ 3,
                  (index) => Expanded(
                    child: Container(
                      color: index % 2 == 1 ? Colors.transparent : Colors.grey,
                      height: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text(
                    "Meals Selection",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Visibility(
                    visible: mealseditVisibile,
                    child: GestureDetector(
                      child: const Text(
                        "Edit",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          mealseditVisibile = false;
                          breakfast = false;
                          pureveg = false;
                          purenonveg = false;
                          breakfastprice = 0;
                          purevegprice = 0;
                          purenonvegprice = 0;
                          totolpricecheck();
                        });
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Breakfast & Sancks"),
                      Text("₹ 500"),
                    ],
                  ),
                  breakfast == false
                      ? TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              breakfast = true;
                              mealseditVisibile = true;
                              breakfastprice = 500;
                              totolpricecheck();
                            });
                          },
                          child: const Text(
                            "Add",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Added",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pure Veg Lunch"),
                      Text("₹ 500"),
                    ],
                  ),
                  pureveg == false
                      ? TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              pureveg = true;
                              mealseditVisibile = true;
                              purevegprice = 500;
                              totolpricecheck();
                            });
                          },
                          child: const Text(
                            "Add",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Added",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pure NonVeg Lunch"),
                      Text("₹ 500"),
                    ],
                  ),
                  purenonveg == false
                      ? TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              purenonveg = true;
                              mealseditVisibile = true;
                              purenonvegprice = 500;
                              totolpricecheck();
                            });
                          },
                          child: const Text(
                            "Add",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Added",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: List.generate(
                  150 ~/ 3,
                  (index) => Expanded(
                    child: Container(
                      color: index % 2 == 1 ? Colors.transparent : Colors.grey,
                      height: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text(
                    "Other Recommdetons",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Visibility(
                    visible: tourGuideEditVisibile,
                    child: GestureDetector(
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          tourGuideEditVisibile = false;
                          tourGuideBooked = false;
                          tourguideprice = 0;
                          totolpricecheck();
                        });
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tour Guide"),
                      Text("₹ 1500"),
                    ],
                  ),
                  tourGuideBooked == false
                      ? IconButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              tourGuideBooked = true;
                              tourGuideEditVisibile = true;
                              tourguideprice = 1500;
                              totolpricecheck();
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )
                      : IconButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: List.generate(
                  150 ~/ 3,
                  (index) => Expanded(
                    child: Container(
                      color: index % 2 == 1 ? Colors.transparent : Colors.grey,
                      height: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text(
                    "Insurance",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Visibility(
                    visible: insuranceEditVisibile,
                    child: GestureDetector(
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          insuranceEditVisibile = false;
                          insuranceBooked = false;
                          insuranceprice = 0;
                          totolpricecheck();
                        });
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Insurance"),
                      Text("At Just ₹50 per Passenger"),
                    ],
                  ),
                  insuranceBooked == false
                      ? IconButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              insuranceBooked = true;
                              insuranceEditVisibile = true;
                              insuranceprice = 50;
                              totolpricecheck();
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )
                      : IconButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                "Insurance Coverage",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                  "Upto ₹70,000 on Hospitliztion &\nUpto ₹5,00,000 in case of Death"),
              const SizedBox(height: 12),
              Row(
                children: List.generate(
                  150 ~/ 3,
                  (index) => Expanded(
                    child: Container(
                      color: index % 2 == 1 ? Colors.transparent : Colors.grey,
                      height: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Bill Breakdown",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "2 Passenger",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              adlut2 == true
                  ? const Row(
                      children: [
                        SizedBox(width: 30),
                        Text("- Adult 2"),
                        Spacer(),
                        Text("₹3,000")
                      ],
                    )
                  : Visibility(
                      visible: child2 == true ? false : true,
                      child: const Row(
                        children: [
                          SizedBox(width: 30),
                          Text("- Adult 1"),
                          Spacer(),
                          Text("₹1,500")
                        ],
                      ),
                    ),
              Visibility(
                visible: adlut2 == true ? false : true,
                child: child2 == true
                    ? const Row(
                        children: [
                          SizedBox(width: 30),
                          Text("- Child 2 (Age 3 - 10)"),
                          Spacer(),
                          Text("₹2,000")
                        ],
                      )
                    : const Row(
                        children: [
                          SizedBox(width: 30),
                          Text("- Child 1 (Age 3 - 10)"),
                          Spacer(),
                          Text("₹1,000")
                        ],
                      ),
              ),
              Visibility(
                visible: careditVisibile,
                child: const SizedBox(height: 5),
              ),
              Visibility(
                visible: careditVisibile,
                child: const Text(
                  "Transportions",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Visibility(
                visible: careditVisibile,
                child: Row(
                  children: [
                    Visibility(
                      visible: privite4carVisible || privite6carVisible,
                      child: const Text("Private Car"),
                    ),
                    Visibility(
                      visible: sharecarVisible,
                      child: const Text("Shared Car"),
                    ),
                    const Spacer(),
                    const Text("₹500"),
                  ],
                ),
              ),
              Visibility(
                visible: mealseditVisibile,
                child: const SizedBox(height: 5),
              ),
              Visibility(
                visible: mealseditVisibile,
                child: const Text(
                  "Meals",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Visibility(
                visible: breakfast,
                child: const Row(
                  children: [
                    Text("Breakfast & Snacks"),
                    Spacer(),
                    Text("₹500"),
                  ],
                ),
              ),
              Visibility(
                visible: pureveg,
                child: const Row(
                  children: [
                    Text("Pure Veg Lunch"),
                    Spacer(),
                    Text("₹500"),
                  ],
                ),
              ),
              Visibility(
                visible: purenonveg,
                child: const Row(
                  children: [
                    Text("Pure Nonveg Lunch"),
                    Spacer(),
                    Text("₹500"),
                  ],
                ),
              ),
              Visibility(
                visible: tourGuideBooked,
                child: const SizedBox(height: 5),
              ),
              Visibility(
                visible: tourGuideBooked,
                child: const Text(
                  "Other Recommidetions",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Visibility(
                visible: tourGuideBooked,
                child: const Row(
                  children: [
                    Text("Tour Guide"),
                    Spacer(),
                    Text("₹1,500"),
                  ],
                ),
              ),
              Visibility(
                visible: insuranceBooked,
                child: const SizedBox(height: 5),
              ),
              Visibility(
                visible: insuranceBooked,
                child: const Text(
                  "Insurance",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Visibility(
                visible: insuranceBooked,
                child: const Row(
                  children: [
                    Text("Insurance"),
                    Spacer(),
                    Text("₹50"),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: List.generate(
                  150 ~/ 3,
                  (index) => Expanded(
                    child: Container(
                      color: index % 2 == 1 ? Colors.transparent : Colors.grey,
                      height: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Text(" (taxes inculied)"),
                  const Spacer(),
                  Text(
                    "$total",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: List.generate(
                  150 ~/ 3,
                  (index) => Expanded(
                    child: Container(
                      color: index % 2 == 1 ? Colors.transparent : Colors.grey,
                      height: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
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
                onPressed: () {},
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
      ),
    );
  }
}

class DotWidget extends StatelessWidget {
  final double totalWidth, dashWidth, emptyWidth, dashHeight;

  final Color dashColor;

  const DotWidget({
    this.totalWidth = 100,
    this.dashWidth = 10,
    this.emptyWidth = 5,
    this.dashHeight = 2,
    this.dashColor = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalWidth ~/ (dashWidth + emptyWidth),
        (_) => Container(
          width: dashWidth,
          height: dashHeight,
          color: dashColor,
          margin: EdgeInsets.only(left: emptyWidth / 2, right: emptyWidth / 2),
        ),
      ),
    );
  }
}
