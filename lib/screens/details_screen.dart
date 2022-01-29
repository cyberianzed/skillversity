import 'package:abibas/constants.dart';
import 'package:abibas/screens/session_one.dart';
import 'package:abibas/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Finance",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .3, // it just take the 50% width
                      height: 21,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: const <Widget>[
                        SeassionCard(
                          seassionNum: 1,
                          isDone: true,
                        ),
                        SeassionCard(
                          seassionNum: 2,
                          isDone: false,
                        ),
                        SeassionCard(
                          seassionNum: 3,
                          isDone: false,
                        ),
                        SeassionCard(
                          seassionNum: 4,
                          isDone: false,
                        ),
                        SeassionCard(
                          seassionNum: 5,
                          isDone: false,
                        ),
                        SeassionCard(
                          seassionNum: 6,
                          isDone: false,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Meditation",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                Text("Start your deepen you practice")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;

  const SeassionCard(
      {Key? key, required this.seassionNum, required this.isDone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 -
            10, // constraint.maxWidth provide us the available with for this widget
        // padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 23,
              spreadRadius: -13,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SessionOne();
                }),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                      color: isDone ? kBlueColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kBlueColor),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : kBlueColor,
                    ),
                  ),
                  Text(
                    "Session $seassionNum",
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
