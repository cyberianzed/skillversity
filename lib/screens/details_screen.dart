import 'package:abibas/constants.dart';
import 'package:abibas/screens/session_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) {
                return const SessionOne();
              }),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: const Color(0xffc7b8f5),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            // child: Expanded(
            //   child: SvgPicture.asset("assets/icons/uiux.svg"),
            // ),
            decoration: const BoxDecoration(
              color: kBlueLightColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Finance",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: const Text(
                        "A series of sessions on the psychology of trading, that will guide you, mend your thoughts and prepare you psychologically to become a novice trader.",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .3, // it just take the 50% width
                      height: 31,
                    ),
                    const Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        SeassionCard(
                          seassionName: "Finance 101",
                          isDone: true,
                        ),
                        SeassionCard(
                          seassionName: "Finance 101",
                          isDone: false,
                        ),
                        SeassionCard(
                          seassionName: "Economics",
                          isDone: false,
                        ),
                        SeassionCard(
                          seassionName: "Blockchain",
                          isDone: false,
                        ),
                        SeassionCard(
                          seassionName: "Crypto",
                          isDone: false,
                        ),
                        SeassionCard(
                          seassionName: "NFTs",
                          isDone: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Finance",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      //margin: EdgeInsets.symmetric(horizontal: 20),
                      //padding: EdgeInsets.all(10),
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
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(
                              height: 80,
                              child: SvgPicture.asset(
                                "assets/icons/finance.svg",
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Intermediate",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const Text(
                                  "Strengthen your knowledge",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
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
  final String seassionName;
  final bool isDone;

  const SeassionCard(
      {Key? key, required this.seassionName, required this.isDone})
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
                  return const SessionOne();
                }),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      seassionName,
                      style: kFeedStampStyle,
                    ),
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
