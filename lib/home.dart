import "package:dad/customization.dart";
import "package:flutter/material.dart";
import "package:dad/home.dart";
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:dad/controls.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(""),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          ),
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),

      //botom nav bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                  },
                  child: Icon(Icons.home)),
              label: ''),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Custom(),
                        ));
                  },
                  child: Icon(Icons.favorite)),
              label: ''),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => controlPage(),
                        ));
                  },
                  child: Icon(Icons.notifications_active)),
              label: ''),
        ],
      ),

//body
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Hi Anto",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 192, 145, 220)
                        .withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: 170,

                    width: 210,
                    //child: Lottie.asset('assets/hos.json'),
                    child: Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_9xrenieu.json'),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 200,
                    child: Image.asset("lib/assets/doctor.png"),
                  ),
                  Column(
                    children: [
                      Text(
                        "WELCOME TO ",
                        style: GoogleFonts.bebasNeue(fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                      Center(
                        child: Text(
                          "LET'S TALK",
                          style: GoogleFonts.bebasNeue(fontSize: 32),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 275,
                  height: 120,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: Center(
                    child: Text(
                      "Bluetooth Connected",
                      style: GoogleFonts.bebasNeue(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
