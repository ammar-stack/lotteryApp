import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = new Random();
  int guessNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 135),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Lottery App',
                  style: GoogleFonts.notoSans(
                      shadows: [
                        const Shadow(
                          color: Colors
                              .amberAccent, // Choose the color of the shadow
                          blurRadius:
                              2.0, // Adjust the blur radius for the shadow effect
                          offset: Offset(2.0,
                              2.0), // Set the horizontal and vertical offset for the shadow
                        ),
                      ],
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'The member with number $guessNumber have won the lottery',
                  style:
                      GoogleFonts.aleo(fontSize: 15, color: Colors.amberAccent),
                ),
              ),
              Container(
                child: guessNumber == 4 ? 
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 250,
                    width: 350,
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Hurray you`ve won the lottery',
                              style: GoogleFonts.aboreto(
                                  fontSize: 18,
                                  color: const Color.fromARGB(255, 3, 32, 18)),
                            )
                          ],
                        )
                      ],
                    ),
                  )):
                  Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 250,
                    width: 350,
                    color: Color.fromARGB(255, 241, 9, 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'OOPS you`ve lost the the lottery',
                              style: GoogleFonts.aboreto(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 236, 255, 246)),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: FloatingActionButton.large(
                  backgroundColor: Colors.amber,
                  child: const Icon(Icons.question_mark_sharp),
                  onPressed: () {
                    setState(() {
                      guessNumber = random.nextInt(5);
                    });
                    print(guessNumber);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
