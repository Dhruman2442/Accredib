import 'package:accredib/theme.dart';
import 'package:accredib/utils.dart';
import 'package:flutter/material.dart';

final cardHolderNameController = TextEditingController();
final cardExpiryDate = TextEditingController();

class addNewCardPage extends StatefulWidget {
  const addNewCardPage({Key? key}) : super(key: key);

  @override
  State<addNewCardPage> createState() => _addNewCardPageState();
}

class _addNewCardPageState extends State<addNewCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorOrange,
        iconTheme: IconThemeData(
          color: colorBlack,
        ),
        title: textStyle("Add Card", fontSizeLarge, colorBlack, fontWeightBold,
            textAlignCenter, fontStyleNormal),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                textField(
                    cardHolderNameController,
                    "Name",
                    "Enter your name",
                    14.5,
                    colorBlack,
                    fontWeightMedium,
                    textAlignLeft,
                    fontStyleNormal,
                    "asset/Settings.png"),
                space(20, 0),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.3,
                      child:
                    textField(
                        cardExpiryDate,
                        "Expiry Date",
                        "Expiry Date",
                        12,
                        colorBlack,
                        fontWeightMedium,
                        textAlignLeft,
                        fontStyleNormal,
                        "asset/Settings.png"),)
                  ],
                ),
                Buttons(() {}, "XYZ", 10, colorBlack, fontWeightBold,
                    textAlignLeft, fontStyleNormal)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
