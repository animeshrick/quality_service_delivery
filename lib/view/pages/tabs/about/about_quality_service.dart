import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';

class AboutQualityService extends StatefulWidget {
  const AboutQualityService({Key? key}) : super(key: key);

  @override
  _AboutQualityServiceState createState() => _AboutQualityServiceState();
}

class _AboutQualityServiceState extends State<AboutQualityService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(
          'About Quality Service',
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    customText('Terms Of Use', black, 16),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, color: mainColor)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    customText('Privacy Policy', black, 16),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, color: mainColor)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
