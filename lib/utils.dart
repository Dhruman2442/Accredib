import 'package:accredib/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

int selectedIndex = 0;
bool showHomePageContainer = true;
bool showProfilePageContainer = false;
List<String> accountTransactionName = ["Food", "Travel", "Shopping", "Study"];
List<Icon> expenseIcon = [
  const Icon(Icons.emoji_food_beverage),
  const Icon(Icons.travel_explore),
  const Icon(Icons.shopping_bag),
  const Icon(Icons.book),
];
List<String> SettingList = [
  "Account Details",
  "Settings",
  "Help and Support",
  "Logout",
];
List<Image> SettingImageList = [
  Image.asset("asset/Profile-person.png"),
  Image.asset("asset/Settings.png"),
  Image.asset("asset/Help.png"),
  Image.asset("asset/Logout.png"),
];

List<String> navBarOptions = [
  "Welcome!",
  "Profile",
  "Settings",
  "Feedback",
  "Logout"
];

List<Icon> navBarOptionsIcon = [
  const Icon(Icons.mobile_friendly),
  const Icon(Icons.verified_user_sharp),
  const Icon(Icons.settings),
  const Icon(Icons.edit_note_outlined),
  const Icon(Icons.logout),
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

Widget textStyleButton(
    String text,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    TextAlign textAlign,
    FontStyle fontStyle,
    VoidCallback onclick) {
  return GestureDetector(
      onTap: onclick,
      child: Text(
        text,
        textAlign: textAlign,
        style: GoogleFonts.poppins(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle),
      ));
}

Widget space(double height, double width) {
  return SizedBox(
    height: height,
    width: width,
  );
}

Widget textField(
    TextEditingController controller,
    String ltext,
    String htext,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    TextAlign textAlign,
    FontStyle fontStyle,
    String image) {
  return TextField(
    controller: controller,
    style: TextStyle(color: color, fontSize: fontSize),
    maxLength: 3,

    decoration: InputDecoration(

        fillColor: colorWhite,
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            image,
            width: 24,
            height: 24,
            fit: BoxFit.fill,
            color: colorBlack,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        labelText: ltext,
        labelStyle: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle),
        hintStyle: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle),
        hintText: htext),
  );
}

Widget Buttons(VoidCallback, String text, double fontSize, Color color,
    FontWeight fontWeight, TextAlign textAlign, FontStyle fontStyle) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: colorLightOrange),
      onPressed: () {},
      child:
          textStyle(text, fontSize, color, fontWeight, textAlign, fontStyle));
}

Widget navigationBar(BuildContext context) {
  return Drawer(
    child: Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: colorOrange,
              ),
              child: textStyle("Accredib", fontSizeLarge, colorlightBlack,
                  fontWeightBold, textAlignLeft, fontStyleNormal)),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: navBarOptions.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                  backgroundColor: colorlightBlack,
                  child: navBarOptionsIcon[index]),
              title: textStyle(navBarOptions[index], fontSizeNormal, colorBlack,
                  fontWeightMedium, textAlignLeft, fontStyleNormal),
              onTap: () => {},
            ),
          ),
          Align(
            child: Column(
              children: const <Widget>[
                Divider(),
                ListTile(
                    leading: Icon(Icons.settings), title: Text('Facebook')),
                ListTile(leading: Icon(Icons.help), title: Text('Instagram'))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
