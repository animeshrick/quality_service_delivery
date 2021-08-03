import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';

import '../ViewBookings.dart';
import 'history.dart';

class OngoingPage extends StatefulWidget {
  const OngoingPage({Key? key}) : super(key: key);

  @override
  _OngoingPageState createState() => _OngoingPageState();
}

class _OngoingPageState extends State<OngoingPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              primary: false,
              separatorBuilder: (_, __) => SizedBox(
                height: 20,
              ),
              itemCount: 5,
              itemBuilder: (_, int i) {
                return InkWell(
                  onTap: () {
                    Get.to(() => ViewBookings());
                  },
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText('Hair salone', black, 20,
                                  fontWeight: FontWeight.bold),
                              SizedBox(
                                height: 5,
                              ),
                              customText('In Ac Servicing', black, 16),
                              SizedBox(
                                height: 15,
                              ),
                              customRichText1('Location :',
                                  '1901 Thornridge Cir. Shiloh', ''),
                              SizedBox(
                                height: 5,
                              ),
                              customRichText1(
                                  'Time :', '02:00 AM - 04:00 PM', ''),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: white,
                                backgroundImage: NetworkImage(
                                    'https://static-bebeautiful-in.unileverservices.com/Unlock-flawless-skin_MobileHomeFeature.jpg'),
                              ),
                              customText(
                                  'Service is to be delivered by Anonomous ',
                                  black,
                                  16),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
