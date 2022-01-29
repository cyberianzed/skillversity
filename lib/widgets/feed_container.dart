import 'package:abibas/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedContainer extends StatelessWidget {
  final String image;
  final String title;
  final String feed;
  final String author;
  final String link;

  const FeedContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.feed,
    required this.author,
    required this.link,
  }) : super(key: key);

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: true,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchInBrowser(link);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: kShadow,
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            //SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kFeedHeadingStyle,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    feed,
                    style: kFeedStyle,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    author,
                    style: kFeedStampStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
