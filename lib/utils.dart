import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

int selectedIndex = 0;

List<String> accountTransactionName = ["Food", "Travel", "Shopping", "Study"];
List<Icon> expenseIcon = [
  Icon(Icons.emoji_food_beverage),
  Icon(Icons.travel_explore),
  Icon(Icons.shopping_bag),
  Icon(Icons.book),
];

Widget textStyle(String text, double fontSize, Color color,
    FontWeight fontWeight, TextAlign textAlign, FontStyle fontStyle) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.poppins(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle),
  );
}

Widget space(double height, double width) {
  return SizedBox(
    height: height,
    width: width,
  );
}

Widget navigationBar(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.5, //<-- SEE HERE
    child: Drawer(
      child: ListView(
// Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Page 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
}
