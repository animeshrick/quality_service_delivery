import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:quality_service_delivery/constant/widgets/textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: customText('Payment', black, 18, fontWeight: FontWeight.w400),
        backgroundColor: white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: mainColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
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
                    Radio(value: false, groupValue: false, onChanged: (v) {}),
                    SizedBox(
                      width: 15,
                    ),
                    customText('Cash on delivery ', white, 18),
                  ],
                ),
              ),
              Card(
                color: textColor,
                child: Row(
                  children: [
                    Radio(value: false, groupValue: false, onChanged: (v) {}),
                    SizedBox(
                      width: 15,
                    ),
                    customText('Pay with Wallet ', white, 18),
                  ],
                ),
              ),
              Card(
                color: textColor,
                child: Row(
                  children: [
                    Radio(value: false, groupValue: false, onChanged: (v) {}),
                    SizedBox(
                      width: 15,
                    ),
                    customText('Pay with Credit or debit card', white, 18),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              textField('Card Number', TextInputType.number, (val) {}),
              SizedBox(
                height: 10,
              ),
              textField('Expiry date', TextInputType.number, (val) {}),
              SizedBox(
                height: 10,
              ),
              textField('CVV', TextInputType.number, (val) {}),
              SizedBox(
                height: 20,
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customText('Total :', black, 18, fontWeight: FontWeight.w300),
                  customText(' \$424', black, 18, fontWeight: FontWeight.w500),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              button(() {}, 'Place Request', mainColor, white)
            ],
          ),
        ),
      ),
    );
  }
}
