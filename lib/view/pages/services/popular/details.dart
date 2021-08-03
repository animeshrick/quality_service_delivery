import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:quality_service_delivery/view/pages/checkout/checkout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
        elevation: 1,
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Image.asset(
                    details,
                    width: 1.sw,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      top: 170,
                      left: 40,
                      right: 40,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ],
                            color: white,
                            border: Border.all(
                              color: white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText('Service cost', grey, 15,
                                    fontWeight: FontWeight.w600),
                                customText('\$422', mainColor, 18,
                                    fontWeight: FontWeight.bold)
                              ],
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
                      )),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Card(
                color: red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText('Service features', black, 18),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (_, int i) {
                          return Row(
                            children: [
                              Icon(
                                Icons.done_all,
                                color: mainColor,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                  child: customText(
                                      'It is a long established fact that a reader will be distracted by the ',
                                      black,
                                      16)),
                            ],
                          );
                        },
                        separatorBuilder: (_, __) => SizedBox(
                          height: 15,
                        ),
                        itemCount: 2,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                color: grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText('Whats Excluded?', black, 18),
                      ListView.separated(
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (_, int i) {
                          return Row(
                            children: [
                              Icon(
                                Icons.done_all,
                                color: mainColor,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                  child: customText(
                                      'It is a long established fact that a reader will be distracted by the ',
                                      black,
                                      16)),
                            ],
                          );
                        },
                        separatorBuilder: (_, __) => SizedBox(
                          height: 15,
                        ),
                        itemCount: 2,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(child: customRichText('', '★ 4.67 ', '2.1k Ratings')),
              SizedBox(
                height: 25,
              ),
              customText('Top Reviews', black, 16, fontWeight: FontWeight.bold),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (_, int i) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: mainColor,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          LinearPercentIndicator(
                              width: 200.0,
                              lineHeight: 14.0,
                              percent: 0.6,
                              center: customText('60 %', white, 15),
                              linearStrokeCap: LinearStrokeCap.butt,
                              backgroundColor: Colors.grey,
                              progressColor: textColor),
                        ],
                      ),
                  separatorBuilder: (_, __) => SizedBox(
                        height: 15,
                      ),
                  itemCount: 5),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (_, int i) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: grey,
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    'https://illustoon.com/photo/dl/3291.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText('Urmi Saha', black, 17),
                                  customText('July 04, 2021', grey, 14),
                                ],
                              ),
                            ],
                          ),
                          customText('3 ★', mainColor, 18),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      customText(
                          '“It is a long established fact that a reader will be distracted by the readable content of a page when looking at its” ',
                          black,
                          14),
                    ],
                  );
                },
                separatorBuilder: (_, __) => SizedBox(
                  height: 15,
                ),
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
