import 'package:accredib/theme.dart';
import 'package:accredib/ui/new_card.dart';
import 'package:accredib/utils.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class AccountBalancePage extends StatefulWidget {
  const AccountBalancePage({Key? key}) : super(key: key);

  @override
  State<AccountBalancePage> createState() => _AccountBalancePageState();
}

class _AccountBalancePageState extends State<AccountBalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorOrange,
        iconTheme: IconThemeData(
          color: colorBlack,
        ),
        title: textStyle("Account Status", fontSizeLarge, colorBlack,
            fontWeightBold, textAlignCenter, fontStyleNormal),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorOrange,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => addNewCardPage()));
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.hardEdge,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorLightOrange,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "asset/Settings.png",
                                  color: colorBlack,
                                ),
                                Image.asset(
                                  "asset/Settings.png",
                                  color: colorBlack,
                                )
                              ],
                            ),
                            space(50, 0),
                            textStyle(
                                "0000 1111 2222 3333",
                                18,
                                colorBlack,
                                fontWeightMedium,
                                textAlignCenter,
                                fontStyleNormal),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textStyle(
                                    "Name",
                                    14.5,
                                    colorBlack,
                                    fontWeightMedium,
                                    textAlignLeft,
                                    fontStyleNormal),
                                textStyle(
                                    "Rathod Dhruman",
                                    12,
                                    colorBlack,
                                    fontWeightMedium,
                                    textAlignLeft,
                                    fontStyleNormal),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textStyle(
                                    "Expiry Date",
                                    14.5,
                                    colorBlack,
                                    fontWeightMedium,
                                    textAlignLeft,
                                    fontStyleNormal),
                                textStyle(
                                    "01/24",
                                    12,
                                    colorBlack,
                                    fontWeightMedium,
                                    textAlignLeft,
                                    fontStyleNormal),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textStyle("Consumption Balance:", 14.5, colorBlack,
                        fontWeightMedium, textAlignLeft, fontStyleNormal),
                    textStyle("\$100000", 16, colorBlack, fontWeightMedium,
                        textAlignLeft, fontStyleNormal),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 40, left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: colorLightOrange,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(10),
                        child: Row(children: [
                          Image.asset(
                            "asset/Settings.png",
                            color: colorBlack,
                          ),
                          space(0, 10),
                          textStyle("Set Limit", 16, colorBlack,
                              fontWeightMedium, textAlignLeft, fontStyleNormal),
                        ]),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: colorLightOrange,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(10),
                        child: Row(children: [
                          Image.asset(
                            "asset/Settings.png",
                            color: colorBlack,
                          ),
                          space(0, 10),
                          textStyle("Lock Card", 16, colorBlack,
                              fontWeightMedium, textAlignLeft, fontStyleNormal),
                        ]),
                      ),
                    ],
                  ),
                ),
                textStyle("Transactions", 20, colorBlack, fontWeightUltraBold,
                    textAlignLeft, fontStyleNormal),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: navBarOptionsIcon.length,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 18,
                            foregroundColor: colorWhite,
                            backgroundColor: colorLightOrange,
                            child: navBarOptionsIcon[index]),
                        title: textStyle("ABC", 14, colorBlack, fontWeightBold,
                            textAlignLeft, fontStyleNormal),
                        subtitle: textStyle("Alphabets ", 12, colorBlack,
                            fontWeightMedium, textAlignLeft, fontStyleNormal),
                        trailing: textStyle("\$200", 14, colorBlack,
                            fontWeightBold, textAlignLeft, fontStyleNormal),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
