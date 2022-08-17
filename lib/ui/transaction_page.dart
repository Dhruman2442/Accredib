import 'package:accredib/theme.dart';
import 'package:accredib/ui/account_balance.dart';
import 'package:accredib/utils.dart';
import 'package:flutter/material.dart';

final amountController = TextEditingController();

String transaction_type = "";
String account_type = "";
String category = "";

var _currentselecteditem = "Select Transaction Type";
var _SelectAccount = "Select Account Type";
var _Selectcategory = "Select Category";

class transactionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _transactionPageState();
}

class _transactionPageState extends State<transactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: colorBlack),
          backgroundColor: colorOrange,
          title: textStyle('Transaction', 20, colorBlack, fontWeightBold,
              textAlignLeft, fontStyleNormal
          ),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: textStyle("Save", 15, colorBlack, fontWeightMedium,
                    textAlignLeft, fontStyleNormal),
              ),
            ),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textStyle("Transaction Type", fontSizeSmall, colorBlack,
                    fontWeightBold, textAlignLeft, fontStyleNormal),
                space(10, 0),
                DropdownButton(
                  underline: const SizedBox(),
                  isExpanded: true,
                  items: [
                    "Select Transaction Type",
                    'Cricket',
                    'BaseBall',
                    'FootBall'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      alignment: Alignment.centerLeft,
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: _currentselecteditem,
                  onChanged: (newValue) {
                    setState(() {
                      _currentselecteditem = newValue as String;
                    });
                  },
                ),
                space(10, 0),
                textStyle("Account Type", fontSizeSmall, colorBlack,
                    fontWeightBold, textAlignLeft, fontStyleNormal),
                space(10, 0),
                DropdownButton(
                  underline: const SizedBox(),
                  isExpanded: true,
                  items: [
                    "Select Account Type",
                    'Cricket',
                    'BaseBall',
                    'FootBall'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      alignment: Alignment.centerLeft,
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: _SelectAccount,
                  onChanged: (newValue) {
                    setState(() {
                      _SelectAccount = newValue as String;
                    });
                  },
                ),
                space(10, 0),
                textField(
                    amountController,
                    "Amount",
                    "Amount",
                    fontSizeNormal,
                    colorBlack,
                    fontWeightNormal,
                    textAlignLeft,
                    fontStyleNormal,
                    "asset/Settings.png"),
                space(10, 0),
                textStyle("Category", fontSizeSmall, colorBlack, fontWeightBold,
                    textAlignLeft, fontStyleNormal),
                space(10, 0),
                DropdownButton(
                  underline: const SizedBox(),
                  isExpanded: true,
                  items: ["Select Category", 'Cricket', 'BaseBall', 'FootBall']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      alignment: Alignment.centerLeft,
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: _Selectcategory,
                  onChanged: (newValue) {
                    setState(() {
                      _Selectcategory = newValue as String;
                    });
                  },
                ),
                space(10, 0),
                textField(
                    amountController,
                    "Description",
                    "Description",
                    fontSizeNormal,
                    colorBlack,
                    fontWeightNormal,
                    textAlignLeft,
                    fontStyleNormal,
                    "asset/Help.png"),
                space(10, 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
