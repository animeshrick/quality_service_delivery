import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'chooseLocation/chooseLocation.dart';

class SelectingSlots extends StatefulWidget {
  const SelectingSlots({Key? key}) : super(key: key);

  @override
  _SelectingSlotsState createState() => _SelectingSlotsState();
}

class _SelectingSlotsState extends State<SelectingSlots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SfDateRangePicker(
                enablePastDates: false,
              ),
              Divider(),
              customText('Time slot available', black, 18,
                  fontWeight: FontWeight.w400),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                separatorBuilder: (_, __) => SizedBox(
                  height: 10,
                ),
                itemCount: 3,
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
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText('02:00 PM - 04:00 PM', black, 17),
                                customText(
                                    'Service time may vary depending upon situation',
                                    grey,
                                    16),
                              ],
                            ),
                          ),
                          shortButton(() {
                            Get.to(() => ChooseLocation());
                          }, 'Choose', mainColor, white),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
