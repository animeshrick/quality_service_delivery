import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title:
            customText('Add Address', black, 18, fontWeight: FontWeight.w400),
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
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                autofocus: true,
                onChanged: (value) {},
                decoration: InputDecoration(
                  fillColor: grey,
                  hintText: 'Enter your location',
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.gps_fixed,
                      color: mainColor,
                    ), // icon is 48px widget.
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                separatorBuilder: (_, __) => Divider(),
                itemCount: 10,
                itemBuilder: (_, int i) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => ShowAddress());
                    },
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: customText(
                              '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
                              black,
                              16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
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

class ShowAddress extends StatefulWidget {
  const ShowAddress({Key? key}) : super(key: key);

  @override
  _ShowAddressState createState() => _ShowAddressState();
}

class _ShowAddressState extends State<ShowAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title:
            customText('Add Address', black, 18, fontWeight: FontWeight.w400),
        backgroundColor: white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: mainColor,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: customText(
                      '2972 Westheimer Rd. Santa Ana, Illinois 85486',
                      black,
                      16),
                ),
                SizedBox(
                  width: 15,
                ),
                customInkWellText(() {}, 'Change', mainColor, 15),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            customText('Enter Additional Details', black, 16,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autofocus: true,
              onChanged: (value) {},
              decoration: InputDecoration(
                fillColor: grey,
                hintText: 'Flat/ Building/ Street',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: black, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: black, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                fillColor: grey,
                hintText: 'Alternate Phone Number(optional)',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: black, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: black, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            button(() {}, 'Add', mainColor, white),
          ],
        ),
      ),
    );
  }
}
