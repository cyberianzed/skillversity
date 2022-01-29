import 'package:abibas/root_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '.hack();',
    theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
    home: const RootApp(),
  ));
}
