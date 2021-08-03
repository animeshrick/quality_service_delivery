import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'selectingSlot/selectingSlot.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: Container(
        height: 70,
        color: textColor,
        child: InkWell(
            onTap: () {
              Get.to(() => SelectingSlots());
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
        title: customText('Checkout', black, 18, fontWeight: FontWeight.w400),
        backgroundColor: white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: mainColor,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              primary: false,
              separatorBuilder: (_, __) => Divider(),
              itemCount: 2,
              itemBuilder: (_, int i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('Ac Basic Service', black, 18,
                            fontWeight: FontWeight.bold),
                        customText('\$422', black, 25,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: customText(
                              ' • It is a long established fact that a reader will be distracted by the readable content ',
                              grey,
                              15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 15,
                                backgroundColor: mainColor,
                                child: iconButton(
                                    () {},
                                    Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                    white)),
                            customText('  01  ', mainColor, 18),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: mainColor,
                              child: iconButton(
                                  () {},
                                  Icon(
                                    Icons.remove,
                                    size: 15,
                                  ),
                                  white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 0.65.sw,
                      child: customText(
                          ' • It is a long established fact that a reader will be distracted by the readable content ',
                          grey,
                          15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            customRow('Item total', '\$4006', black, black),
            SizedBox(
              height: 10,
            ),
            customRow('Safety standards', '\$6', black, black),
            SizedBox(
              height: 10,
            ),
            customRow('Total', '\$4012', mainColor, black),
            SizedBox(
              height: 10,
            ),
          ],
        )),
      ),
    );
  }
}

Widget customRow(text1, text2, Color color1, Color color2) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customText(text1, color1, 18, fontWeight: FontWeight.w400),
        customText(text2, color2, 18, fontWeight: FontWeight.bold),
      ],
    );
