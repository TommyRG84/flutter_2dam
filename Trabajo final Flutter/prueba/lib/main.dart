import 'package:flutter/material.dart';
import 'package:prueba/app/pages/searchPage/search_page.dart';
import 'package:prueba/app/theme/theme.dart';

void main() {
  runApp(const TheCassette());
}

class TheCassette extends StatelessWidget {
  const TheCassette({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Cassette',
      theme: customTheme,
      home: const SearchPage(),
    );
  }
}
