import "package:dad/controls.dart";
import "package:dad/home.dart";
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Custom extends StatefulWidget {
  const Custom({super.key});

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  //to get what the user types
  final _textController = TextEditingController();
  String testpost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      //appbar
      appBar: AppBar(
        elevation: 0,
        title: const Text("Customization"),
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
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Find the best Word for you",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 56,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //Sensor input area code
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text("Sensor 1"),
                      hintText: "which command do you want?"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text("Sensor 2"),
                      hintText: "which command do you want?"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text("Sensor 3"),
                      hintText: "which command do you want?"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: const Text("Sensor 4"),
                      hintText: "which command do you want?"),
                ),
              ),

//controls
              const SizedBox(height: 10),
              FloatingActionButton.extended(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => controlPage(),
                          ));
                    },
                    child: const Icon(Icons.navigation)),
                backgroundColor:
                    const Color.fromARGB(255, 192, 145, 220).withOpacity(0.5),
                foregroundColor: Colors.white,
                label: const Text("Controls"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
