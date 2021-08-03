import 'package:flutter/material.dart';
import 'package:quality_service_delivery/constant/const.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_service_delivery/view/pages/tabs/booking_page/ongoing.dart';

import 'booking_page/history.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            indicatorColor: mainColor,
            labelColor: mainColor,
            unselectedLabelColor: grey,
            unselectedLabelStyle: TextStyle(color: grey),
            tabs: [
              Tab(
                  child: Text(
                'Ongoing',
                style: TextStyle(fontSize: 25),
              )),
              Tab(
                  child: Text(
                'History',
                style: TextStyle(fontSize: 25),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OngoingPage(),
            HistoryPage(),
          ],
        ),
      ),
    );
  }
}
