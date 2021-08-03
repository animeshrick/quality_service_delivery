import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';

class AddWallet extends StatefulWidget {
  const AddWallet({Key? key}) : super(key: key);

  @override
  _AddWalletState createState() => _AddWalletState();
}

class _AddWalletState extends State<AddWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(
          'Add Wallet',
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText('Payment Methods', black, 18,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 15,
              ),
              Card(
                color: textColor,
                child: Row(
                  children: [
                    Radio(value: true, groupValue: true, onChanged: (v) {}),
                    SizedBox(
                      width: 15,
                    ),
                    customText('Pay with Credit or debit card', white, 18),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    fillColor: grey,
                    hintText: 'Card Number',
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
                padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    fillColor: grey,
                    hintText: 'Expiry date',
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
                padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    fillColor: grey,
                    hintText: 'CVV',
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
                padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    fillColor: grey,
                    hintText: 'Card Holder name',
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
              SizedBox(
                height: 10,
              ),
              customText('UPI', black, 18),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.black.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              paypal,
                              height: 25,
                            ),
                            Text(' Pay'),
                          ],
                        ),
                      )),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.black.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              googlePay,
                              height: 25,
                            ),
                            Text(' Pay'),
                          ],
                        ),
                      )),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.black.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              amazon,
                              height: 25,
                            ),
                            Text(' Pay'),
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(child: customText('Total : \$424', black, 18)),
              SizedBox(
                height: 10,
              ),
              button(() {}, 'Add Money', mainColor, white),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
