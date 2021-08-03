import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/view/pages/tabs/search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'popular/popularpage.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: textColor,
            leadingWidth: 45,
            actions: [
              IconButton(
                  onPressed: () {
                    Get.to(() => SearchPage());
                  },
                  icon: Icon(
                    Icons.search,
                    color: white,
                    size: 25,
                  )),
            ],
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
              title: Text('Home Service'),
              background: Image.asset(
                serviceBanner,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 10, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText('Popular', black, 18, fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 10,
                  ),
                  /* ------- popular -------- */
                  SizedBox(
                    height: 0.27.sh,
                    child: ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => SizedBox(
                        width: 15,
                      ),
                      itemCount: 10,
                      itemBuilder: (_, int i) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => PopularPage());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.black.withOpacity(0.2),
                                width: 1,
                              ),
                            ),
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(10.0),
                            // ),
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: Image.network(
                                      'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/181413774/original/0d84da81f0144839f2a3d9b463e852afa64c4a47/do-fashion-hair-style-saloon-and-barbar-shop-logo.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  customText('Ac Servicing', mainColor, 18),
                                  customText(
                                      '14 Services Available', black, 15),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  customText('Ac Service and instalation', black, 18,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 0.27.sh,
                    child: ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => SizedBox(
                        width: 15,
                      ),
                      itemCount: 10,
                      itemBuilder: (_, int i) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.black.withOpacity(0.2),
                              width: 1,
                            ),
                          ),
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(10.0),
                          // ),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Image.network(
                                    'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/181413774/original/0d84da81f0144839f2a3d9b463e852afa64c4a47/do-fashion-hair-style-saloon-and-barbar-shop-logo.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                customText('Ac Servicing', mainColor, 18),
                                customText('14 Services Available', black, 15),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  customText('Ac Service and instalation', black, 18,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 0.27.sh,
                    child: ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => SizedBox(
                        width: 15,
                      ),
                      itemCount: 10,
                      itemBuilder: (_, int i) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.black.withOpacity(0.2),
                              width: 1,
                            ),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Image.network(
                                    'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/181413774/original/0d84da81f0144839f2a3d9b463e852afa64c4a47/do-fashion-hair-style-saloon-and-barbar-shop-logo.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                customText('Ac Servicing', mainColor, 18),
                                customText('14 Services Available', black, 15),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
