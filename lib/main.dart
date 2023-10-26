import 'package:abibas/root_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
    home: const MaterialApp(home: RootApp()),
  ));
}
