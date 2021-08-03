import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_service_delivery/view/pages/checkout/checkout.dart';

import '../../tabs/ViewBookings.dart';
import 'details.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: Container(
        height: 70,
        color: textColor,
        child: InkWell(
            onTap: () {
              Get.to(() => CheckoutPage());
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
        title: customText('Ac Basic Service', black, 18,
            fontWeight: FontWeight.w400),
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
            padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  separatorBuilder: (_, __) => SizedBox(
                    height: 30,
                  ),
                  itemCount: 3,
                  itemBuilder: (_, int i) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText('Ac Basic Service', mainColor, 18),
                                SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w400),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '☆ 4.67  ',
                                          style: TextStyle(color: mainColor)),
                                      TextSpan(
                                          text: '2.1k Ratings',
                                          style: TextStyle(color: black)),
                                    ],
                                  ),
                                  textScaleFactor: 0.5,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                customText('\$500', black, 23,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                      'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/181413774/original/0d84da81f0144839f2a3d9b463e852afa64c4a47/do-fashion-hair-style-saloon-and-barbar-shop-logo.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
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
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        customText(
                            ' • It is a long established fact that a reader will be distracted by the readable content',
                            black,
                            15,
                            fontWeight: FontWeight.w400),
                        SizedBox(
                          height: 15,
                        ),
                        customText(
                            ' • It is a long established fact that a reader will be distracted by the readable content',
                            black,
                            15,
                            fontWeight: FontWeight.w400),
                        SizedBox(
                          height: 20,
                        ),
                        button(() {
                          Get.to(() => Details());
                        }, 'Details', white, mainColor),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 1.sw,
                    height: 0.35.sh,
                    child: SvgPicture.asset(
                      helpSVG,
                      fit: BoxFit.cover,
                    )),
              ],
            )),
      ),
    );
  }
}
