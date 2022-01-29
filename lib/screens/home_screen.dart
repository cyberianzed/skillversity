import 'package:abibas/constants.dart';
import 'package:abibas/widgets/category_card.dart';
import 'package:abibas/widgets/progres_card.dart';
import 'package:abibas/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return SafeArea(
      child: Scaffold(
          // backgroundColor: Color(0xffeffdda),
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("Hey Ashwin!", style: kHeadingextStyle),
                  Image.asset("assets/images/user.png"),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              //width: 200,
              height: 270,
              child:
                  Expanded(child: SvgPicture.asset("assets/icons/avatar.svg")),
            ),
            const ProgresCard(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 40,
                    height: 180,
                    child: Expanded(
                        child: SvgPicture.asset("assets/icons/goal.svg")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Let's begin this journey by setting\nyour daily goal\n",
                          style: TextStyle(fontSize: 13),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 45,
                            ),
                            buttonText(),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            //const SearchBar(),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 3),
              child: Text(
                "Explore topics",
                style: exploreTextStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CategoryCard(
                  title: "Finance",
                  svgSrc: "assets/icons/finance.svg",
                ),
                CategoryCard(
                  title: "Craft",
                  svgSrc: "assets/icons/craft.svg",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CategoryCard(
                  title: "UI/UX",
                  svgSrc: "assets/icons/uiux.svg",
                ),
                CategoryCard(
                  title: "Coding",
                  svgSrc: "assets/icons/coding.svg",
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
