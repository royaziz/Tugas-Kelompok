import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mytilkimsil/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        bottomNavigationBar: BottomAppBar(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(Icons.home),
            Icon(Icons.assessment),
            Icon(Icons.add_box),
            Icon(Icons.notifications),
            Icon(Icons.person),
          ]),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              SizedBox(height: 30),
              //appbar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text('Good morning, John!',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.history,
                    ),
                  ),
                ]),
              ),

              SizedBox(height: 25),

              // card
              Container(
                height: 200,
                child: PageView(scrollDirection: Axis.horizontal, children: [
                  MyCard(
                    balance: 1299.15,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 761.20,
                    cardNumber: 12345678,
                    expiryMonth: 11,
                    expiryYear: 23,
                    color: Colors.red[400],
                  ),
                  MyCard(
                    balance: 122.20,
                    cardNumber: 12345678,
                    expiryMonth: 9,
                    expiryYear: 22,
                    color: Colors.yellow[400],
                  ),
                ]),
              ),

              SizedBox(height: 50),

              Text(
                'Upcoming Bill',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(children: [
                    ListTile(leading: Image.network('https://cdn-icons-png.flaticon.com/512/563/563284.png'), title: Text("Market bills", style: TextStyle(fontWeight: FontWeight.bold)), subtitle: Text("December 28, 2021")),
                    ListTile(leading: Image.network('https://toppng.com/public/uploads/thumbnail/supermarket-cctv-icon-supermarket-ico-11563033623cvqtsfy7xz.png'), title: Text("Supermarket bills", style: TextStyle(fontWeight: FontWeight.bold)), subtitle: Text("December 28, 2021")),
                    ListTile(leading: Image.network('https://cdn-icons-png.flaticon.com/512/3700/3700434.png'), title: Text("Store bills", style: TextStyle(fontWeight: FontWeight.bold)), subtitle: Text("December 28, 2021")),
                    ListTile(leading: Image.network('https://cdn-icons-png.flaticon.com/512/93/93158.png'), title: Text("Wifi bills", style: TextStyle(fontWeight: FontWeight.bold)), subtitle: Text("December 28, 2021")),
                    ListTile(leading: Image.network('https://icon-library.com/images/electricity-icon-png/electricity-icon-png-23.jpg'), title: Text("electricity bills", style: TextStyle(fontWeight: FontWeight.bold)), subtitle: Text("December 28, 2021"))
                  ])),
            ]),
          ),
        ));
  }
}
