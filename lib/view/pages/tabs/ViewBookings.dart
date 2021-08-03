import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewBookings extends StatefulWidget {
  const ViewBookings({Key? key}) : super(key: key);

  @override
  _ViewBookingsState createState() => _ViewBookingsState();
}

class _ViewBookingsState extends State<ViewBookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: textColor,
            leadingWidth: 45,
            leading: Container(
              padding: EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: white,
                    size: 25,
                  )),
            ),
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              // title: Text('Home Service'),
              background: Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/51URYqZ5qgL._SX425_.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 15),
            color: textColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Hair salone', white, 20),
                    customText('Service cost', white, 15),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('In Grooming Servicing', white, 15),
                    customText('\$422', white, 20),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Location :', white, 16),
                    SizedBox(
                      width: 20,
                    ),
                    customText('1901 Thornridge Cir. Shiloh', mainColor, 16),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Time :', white, 16),
                    SizedBox(
                      width: 50,
                    ),
                    customText('02:00 AM - 04:00 PM, 2nd July', mainColor, 16),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                button(() {}, 'Cancel Service', mainColor, white)
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText('Service is to be delivered by ', black, 17),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: white,
                        backgroundImage: NetworkImage(
                            'https://static-bebeautiful-in.unileverservices.com/Unlock-flawless-skin_MobileHomeFeature.jpg'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText('John Doe', black, 16,
                              fontWeight: FontWeight.bold),
                          Row(
                            children: [
                              customText('✰ 4.67', mainColor, 16),
                              customText('2.1kRatings', black, 16),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      customText('Contact : ', black, 16),
                      customText('+235-6346-649636', mainColor, 16),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText('Service features', black, 17,
                          fontWeight: FontWeight.bold),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        // separatorBuilder: (_, __) => SizedBox(
                        //   height: 15,
                        // ),
                        itemCount: 2,
                        itemBuilder: (_, int i) {
                          return Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.done_all_outlined,
                                color: mainColor,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                child: customText(
                                    'It is a long established fact that a reader will be distracted by the ',
                                    black,
                                    16),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                  child: Divider(
                    color: black,
                    thickness: 3,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText('Whats Excluded?', black, 17,
                      fontWeight: FontWeight.bold),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    // separatorBuilder: (_, __) => SizedBox(
                    //   height: 15,
                    // ),
                    itemCount: 2,
                    itemBuilder: (_, int i) {
                      return Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.done_all_outlined,
                            color: mainColor,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Flexible(
                            child: customText(
                                'It is a long established fact that a reader will be distracted by the ',
                                black,
                                16),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ]),
      ),
    ));
  }
}
