import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_service_delivery/view/pages/tabs/about/about_quality_service.dart';
import 'package:quality_service_delivery/view/pages/tabs/wallet.dart';
import 'package:share/share.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
        color: white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText('Customer Name', black, 25),
                    SizedBox(
                      height: 5,
                    ),
                    customText('name2@Gmail.com  +9768766868', grey, 16),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: mainColor,
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 1.sw,
              height: 0.3.sh,
              child: Image.asset(
                registerImage,
                fit: BoxFit.contain,
              ),
            ),
            customText('App options', black, 20, fontWeight: FontWeight.bold),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Get.to(()=>AboutQualityService());
                },
                child: customRow(
                    icon: Icons.info_outline, text: 'About Quality Service')),
            SizedBox(
              height: 20,
            ),
            customRow(icon: Icons.message_outlined, text: 'Help Center'),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Get.to(() => Wallet());
                },
                child: customRow(
                    icon: Icons.wallet_giftcard_outlined, text: 'Wallet')),
            SizedBox(
              height: 40,
            ),
            customText('More options', black, 20, fontWeight: FontWeight.bold),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap:()=>Share.share('check out my website https://example.com'),
              child: customRow(icon: Icons.share, text: 'Share App')),
            SizedBox(
              height: 20,
            ),
            customRow(icon: Icons.logout_outlined, text: 'Log Out'),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Widget customRow({required IconData icon, required String text}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: grey),
            SizedBox(
              width: 20,
            ),
            customText(text, black, 18, fontWeight: FontWeight.w400),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: mainColor,
        ),
      ],
    );
