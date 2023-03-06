import "package:flutter/material.dart";
import "package:dad/home.dart";
import 'package:google_fonts/google_fonts.dart';

class controlPage extends StatefulWidget {
  const controlPage({super.key});

  @override
  State<controlPage> createState() => _controlPageState();
}

class _controlPageState extends State<controlPage> {
  //for radio button of high low
  int selected = 0;
  Widget customRadio(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (selected == index) ? Colors.purple : Colors.white,
          fontSize: 12,
        ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        fixedSize: const Size(120, 30),
        //textStyle: const TextStyle(fontSize: 30),
        side: BorderSide(color: Colors.white, width: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Controls"),
        centerTitle: true,
        backgroundColor:
            const Color.fromARGB(255, 192, 145, 220).withOpacity(0.5),
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                },
                child: Icon(Icons.person)),
          ),
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 250,
                  height: 60,
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
                      "Sensor 1",
                      style: GoogleFonts.bebasNeue(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: customRadio("HIGH", 1),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: customRadio("LOW", 2),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 250,
                  height: 60,
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
                      "Sensor 2",
                      style: GoogleFonts.bebasNeue(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: customRadio("HIGH", 3),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: customRadio("LOW", 4),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 250,
                  height: 60,
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
                      "Sensor 3",
                      style: GoogleFonts.bebasNeue(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: customRadio("HIGH", 5),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: customRadio("LOW", 6),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 250,
                  height: 60,
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
                      "Sensor 4",
                      style: GoogleFonts.bebasNeue(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: customRadio("HIGH", 7),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: customRadio("LOW", 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
