import 'package:abibas/constants.dart';
import 'package:abibas/widgets/category_card.dart';
import 'package:abibas/widgets/progres_card.dart';
import 'package:abibas/widgets/text_button.dart';
import 'package:flutter/material.dart';

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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Hello Ashwin!",
                style: kHeadingextStyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              //width: 200,
              height: 270,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/avatar.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            progresCard(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 40,
                    height: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/goal.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Let's begin this journey by setting\nyour daily goal\n",
                          style: TextStyle(fontSize: 12),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 70,
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
            Row(
              children: const [
                CategoryCard(
                  title: "Finance",
                  svgSrc: "assets/icons/Hamburger.svg",
                ),
                CategoryCard(
                  title: "Craft",
                  svgSrc: "assets/icons/Hamburger.svg",
                ),
              ],
            ),
            Row(
              children: const [
                CategoryCard(
                  title: "UI/UX",
                  svgSrc: "assets/icons/Hamburger.svg",
                ),
                CategoryCard(
                  title: "Programming",
                  svgSrc: "assets/icons/Hamburger.svg",
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
