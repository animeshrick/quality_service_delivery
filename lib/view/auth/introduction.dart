import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:quality_service_delivery/view/auth/signup.dart';
import 'package:quality_service_delivery/view/pages/dashboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      // appBar: AppBar(
      //   backgroundColor: white,
      //   elevation: 0,
      //   actions: [
      //     Center(
      //         child: Padding(
      //       padding: const EdgeInsets.all(15.0),
      //       child: customInkWellText(() {
      //         Get.to(() => Dashboard());
      //       }, 'Skip', black, 15, fontWeight: FontWeight.w300),
      //     ))
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.pink[50]!.withOpacity(0.3),
              child: Column(
                children: [
                  SizedBox(
                    height: 0.06.sh,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: customInkWellText(() {
                          Get.to(() => Dashboard());
                        }, 'Skip', black, 15, fontWeight: FontWeight.w300),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: customText(
                        'Every service at your finger tips', textColor, 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      children: [
                        customText('Quality   •   ', mainColor, 18),
                        customText('Fast   •   ', mainColor, 18),
                        customText('Assured', mainColor, 18),
                      ],
                    ),
                  ),
                  SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.5,
                    // width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset(
                      intro,
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.9,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width,
                  child: button(() {
                    Get.to(() => Signup());
                  }, 'Sign Up', mainColor, white)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                child: button(() {
                  Get.to(() => Login());
                }, 'Login', white, mainColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
