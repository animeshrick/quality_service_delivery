import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:quality_service_delivery/constant/widgets/gridview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_service_delivery/view/pages/services/servicePage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customRichText(
                  'Hi ', 'User ', 'What type of service do you need?'),
              SizedBox(
                height: 30,
              ),

              /* ------ services -------- */
              GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      crossAxisCount: 3),
                  itemCount: 6,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => ServicePage());
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.black.withOpacity(0.2),
                              width: 1,
                            ),
                          ),
                          elevation: 5,
                          shadowColor: black,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  // height: 90,
                                  child: Image.asset(
                                    service,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Flexible(
                                    child:
                                        customText('Home Service', black, 13))
                              ],
                            ),
                          )),
                    );
                  }),
              // customGridview(() {}, 3, 6, service, 'Home Service'),
              SizedBox(
                height: 15,
              ),
              customText('Best Offers', black, 18, fontWeight: FontWeight.bold),
              SizedBox(
                height: 5,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      crossAxisCount: 2),
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => ServicePage());
                      },
                      child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.black.withOpacity(0.2),
                              width: 1,
                            ),
                          ),
                          shadowColor: black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(7, 5, 5, 0),
                                child: Image.asset(
                                  offers,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Flexible(
                                  child:
                                      customText('  Salon for men', black, 15))
                            ],
                          )),
                    );
                  }),
              SizedBox(
                height: 15,
              ),
              button(() {}, 'View More', white, mainColor),
              SizedBox(
                height: 15,
              ),
              customText('Customer Review', black, 18,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 0.23.sh,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  separatorBuilder: (_, __) => SizedBox(
                    height: 15,
                  ),
                  itemCount: 2,
                  itemBuilder: (_, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.black.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      elevation: 5,
                      // color: red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: RatingBar.builder(
                              itemSize: 25.0,
                              initialRating: 3,
                              minRating: 1,
                              itemCount: 5,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: mainColor,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customText(
                                    '\"Best Service you got there\"', black, 18,
                                    fontWeight: FontWeight.bold),
                                // SizedBox(
                                //   width: 0.07.sw,
                                // ),
                                CircleAvatar(
                                  radius: 0.09.sw,
                                  backgroundImage: NetworkImage(
                                      'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: customText('By Subham', black, 18),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
