import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int teamA = 0;
  late int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea
      (
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffFF9800),
            title: Text(
              "Points Counter",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 550,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 32,),
                          Text(
                            "Team A",
                            style: TextStyle(fontSize: 30),
                          ),
                          FittedBox(
                            child: Text(
                              "$teamA",
                              style: TextStyle(fontSize: 150),
                            ),
                          ),
                          Button(
                            teamA: 1,
                            onpressed: () {
                              setState(() {
                                teamA++;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Button(
                              onpressed: () {
                                setState(() {
                                  teamA = teamA + 2;
                                });
                              },
                              teamA: 2),
                          SizedBox(
                            height: 20,
                          ),
                          Button(
                              onpressed: () {
                                setState(() {
                                  teamA = teamA + 3;
                                });
                              },
                              teamA: 3),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(height: 32,),
                          Text(
                            "Team B",
                            style: TextStyle(fontSize: 30),
                          ),
                          Flexible(
                            child: Text(
                              "$teamB",
                              style: TextStyle(fontSize: 150),
                            ),
                          ),
                          Button(
                            teamA: 1,
                            onpressed: () {
                              setState(() {
                                teamB++;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Button(
                              onpressed: () {
                                setState(() {
                                  teamB = teamB + 2;
                                });
                              },
                              teamA: 2),
                          SizedBox(
                            height: 20,
                          ),
                          Button(
                              onpressed: () {
                                setState(() {
                                  teamB = teamB + 3;
                                });
                              },
                              teamA: 3),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA = 0;
                        teamB = 0;
                      });
                    },
                    child: Text("Reset"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        backgroundColor: Color(0xffFF9800)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.onpressed,
    required this.teamA,
  });
  VoidCallback onpressed;
  final int teamA;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text("Add $teamA Points"),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          backgroundColor: Color(0xffFF9800)),
    );
  }
}
