import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';

import 'addWallet/addWallet.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(
          'Wallet',
          black,
          18,
        ),
        elevation: 0.5,
        actionsIconTheme: IconThemeData(color: mainColor),
        backgroundColor: white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: mainColor,
            )),
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 0.4.sh,
              width: 1.sw,
              color: textColor,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.15.sh,
                    ),
                    customText('\$650', mainColor, 45),
                    customText('Current balance', mainColor, 15),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  fillColor: grey,
                  hintText: 'Enter Ammount ',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: button(() {
                Get.to(()=>AddWallet());
              }, 'Continue', mainColor, white),
            ),
          ],
        ),
      ),
    );
  }
}
