import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        title: customText('Sign Up', black, 18),
        backgroundColor: white,
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      icon: Icon(
                        Icons.close_outlined,
                        color: white,
                      ),
                      onPressed: () => Get.back()),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: customText("Enter OTP", black, 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 30,
                ),
                PinCodeTextField(
                  cursorColor: mainColor,
                  appContext: context,
                  length: 4,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: grey,
                      inactiveColor: grey,
                      activeColor: grey,
                      selectedColor: grey,
                      selectedFillColor: grey,
                      inactiveFillColor: grey),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      //currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    return true;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                button(() {}, 'Sign Up', mainColor, white),
                SizedBox(
                  height: 30,
                ),
                customUnderlineText('Resend OTP', grey, 18),
                SizedBox(
                  height: 0.3.sh,
                ),
                customRichText('Already member? ', 'Sign In', ''),
              ],
            )),
      ),
    );
  }
}
