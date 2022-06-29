import 'package:accredib/theme.dart';
import 'package:accredib/utils.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      drawer: navigationBar(context),
      appBar: AppBar(
        backgroundColor: colorOrange,
        iconTheme: IconThemeData(
          color: colorBlack,
        ),
        title: textStyle("Accredib", fontSizeLarge, colorBlack, fontWeightBold,
            textAlignCenter, fontStyleNormal),
      ),
      bottomNavigationBar: BottomAppBar(
        color: colorOrange,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home,
                size: 25,
              ),
              onPressed: () {
                setState(() {
                  showHomePageContainer = true;
                  showProfilePageContainer = false;
                });
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                size: 25,
              ),
              onPressed: () {
                setState(() {
                  showHomePageContainer = false;
                  showProfilePageContainer = true;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: colorBlack,
        elevation: 4.0,
        icon: const Icon(Icons.add),
        label: const Text('Add a transaction'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Visibility(
                visible: showHomePageContainer,
                child: homePageContainer(),
              ),
              Visibility(
                visible: showProfilePageContainer,
                child: profilePageContainer(),
              ),
            ],
          )),
        ),
      ),
    );
  }

  Widget homePageContainer() {
    return FadeAnimation(
      0.5,
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: colorBlack,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'asset/Profile.svg',
                      color: colorWhite,
                      height: 130,
                      width: 130,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        textStyle("Account Balance", 20, colorWhite,
                            fontWeightMedium, textAlignCenter, fontStyleNormal),
                        textStyle("1000000 Rs.", 20, colorWhite,
                            fontWeightMedium, textAlignCenter, fontStyleNormal),
                        space(15, 0),
                        GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                textStyle(
                                    "Show Account Status",
                                    fontSizeSmall,
                                    colorBlue,
                                    fontWeightBold,
                                    textAlignCenter,
                                    fontStyleNormal),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: colorBlue,
                                )
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: accountTransactionName.length,
              itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        title: textStyle(
                            accountTransactionName[index],
                            fontSizeNormal,
                            colorBlack,
                            fontWeightMedium,
                            textAlignLeft,
                            fontStyleNormal),

                        leading: CircleAvatar(
                          backgroundColor: colorlightBlack,
                          child: expenseIcon[index],
                        ),
                        subtitle: textStyle(
                            "\$100",
                            fontSizeSmall,
                            colorlightBlack,
                            fontWeightNormal,
                            textAlignLeft,
                            fontStyleItalic),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                        onTap: () {},

                        // contentPadding: EdgeInsets.all(5),
                      ),
                    ],
                  ))
        ],
      ),
    );
  }

  Widget profilePageContainer() {
    return FadeAnimation(
      0.5,
      Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Image.asset(
              "asset/Profile.svg",
              color: colorBlack,
              height: 75,
              width: 75,
            ),
          ),
          space(1, 0),
          textStyle("Name", 20, colorBlack, fontWeightBold, textAlignCenter,
              fontStyleNormal),

          ListView.builder(
            itemCount: SettingList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(children: [
              ListTile(
                contentPadding: EdgeInsets.all(7),
                leading: CircleAvatar(
                  backgroundColor: colorlightBlack,
                  child: SettingImageList[index],
                ),
                title: textStyle(SettingList[index], 18, colorBlack,
                    FontWeight.w600, TextAlign.left, FontStyle.normal),
              ),
              Container(
                color: colorlightGrey,
                child: SizedBox(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              )
            ]),
          ),

          // Container(child: ,)
        ],
      ),
    );
  }
}
