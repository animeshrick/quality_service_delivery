import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:quality_service_delivery/constant/widgets/textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'otp.dart';

class EnterPhoneNumber extends StatefulWidget {
  const EnterPhoneNumber({Key? key}) : super(key: key);

  @override
  _EnterPhoneNumberState createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        title: customText('Sign Up', black, 18),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText('Enter Phone Number', black, 25),
              SizedBox(
                height: 20,
              ),
              textField('Phone Number', TextInputType.emailAddress, (value) {}),
              SizedBox(
                height: 20,
              ),
              button(() {
                Get.to(() => Otp());
              }, 'Continue', mainColor, white),
              SizedBox(
                height: 0.5.sh,
              ),
              Center(child: customRichText('Already member? ', 'Sign In', '')),
            ],
          ),
        ),
      ),
    );
  }

  
}
