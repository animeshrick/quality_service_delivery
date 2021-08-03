import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/view/pages/tabs/booking.dart';
import 'package:quality_service_delivery/view/pages/tabs/home.dart';
import 'package:quality_service_delivery/view/pages/tabs/profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'tabs/credits.dart';
import 'tabs/search.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  var _widgetOptions = [Home(), Bookings(), Credits(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.near_me_outlined),
              color: black,
            ),
            customText('1901 Thornridge Cir. Shiloh ▼', black, 15,
                fontWeight: FontWeight.w400),
          ],
        ),
        backgroundColor: white,
        elevation: 0.5,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
            color: black,
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 60,
            width: 1.sw,
            color: textColor,
            child: InkWell(
              onTap: () {
                Get.to(() => SearchPage());
              },
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(
                    color: black,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    customText('Search for any service', grey, 16)
                  ],
                ),
              ),
            ),
          ),
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book_online),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                label: 'Credit',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            elevation: 1,
            backgroundColor: textColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: white,
            unselectedItemColor: Colors.white38,
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}
