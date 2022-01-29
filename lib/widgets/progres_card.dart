import 'package:abibas/constants.dart';
import 'package:abibas/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgresCard extends StatelessWidget {
  const ProgresCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      height: 115,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: kShadow,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const DetailsScreen();
              }),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // SizedBox(height: ),
                const Text(
                  "Continue reading",
                  style: TextStyle(
                    fontSize: 17,
                    //color: Color(0xFFA0A5BD),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: CircularPercentIndicator(
                        radius: 20.0,
                        lineWidth: 6.0,
                        percent: .62,
                        animation: true,
                        center: Text(
                          "62%",
                          style:
                              TextStyle(fontSize: 11, color: Colors.grey[700]),
                        ),
                        progressColor: const Color(0xff00a075),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        // leading:
                        title: const Text(
                          "Finance",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text("Level: Beginner"),
                        trailing: Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.lightGreenAccent[700],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
