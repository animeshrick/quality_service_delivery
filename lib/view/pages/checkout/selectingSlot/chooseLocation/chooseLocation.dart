import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:quality_service_delivery/view/pages/checkout/selectingSlot/chooseLocation/payment/payment.dart';

import 'addAddress.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: Container(
        height: 70,
        color: textColor,
        child: InkWell(
            onTap: () {
              Get.to(() => Payment());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    child: Row(
                  children: [
                    customText('  \$4012   ', white, 16),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: white,
                      child: customText('3', black, 15),
                    )
                  ],
                )),
                SizedBox(
                    child: Row(
                  children: [
                    customText('Book Service', white, 16),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: white,
                      size: 15,
                    )
                  ],
                )),
              ],
            )),
      ),
      appBar: AppBar(
        title: customText('Select Address', black, 18,
            fontWeight: FontWeight.w400),
        backgroundColor: white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: mainColor,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(child: SvgPicture.asset(address)),
            customText('Saved Locations', mainColor, 25,
                fontWeight: FontWeight.bold),
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
                customText('Add New Location', black, 18,
                    fontWeight: FontWeight.w400),
                shortButton(() {
                  Get.to(() => AddAddress());
                }, 'Add', mainColor, white)
              ],
            ),
            Divider(
              thickness: 1,
            ),
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              separatorBuilder: (_, __) => SizedBox(
                height: 15,
              ),
              itemCount: 2,
              itemBuilder: (_, int i) {
                return Row(
                  children: [
                    Radio(value: true, groupValue: true, onChanged: (val) {}),
                    Flexible(
                      child: customText(
                          '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
                          grey,
                          18),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
