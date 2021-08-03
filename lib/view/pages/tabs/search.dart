import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: customText('Search service', black, 18),
        elevation: 0.5,
        actionsIconTheme: IconThemeData(color: mainColor),
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
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                autofocus: true,
                decoration: new InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for any service',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              customText('Popular', grey, 15),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                shrinkWrap: true,
                primary: false,
                separatorBuilder: (_, __) => Divider(),
                itemCount: 10,
                itemBuilder: (_, int i) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            // width: 90,
                            height: 90,
                            child: Image.network(
                                'https://www.dealsanimg.com/d/l400/pict/192195113510_/barber-shop-tattoo-hipster-personalised-wall-art.jpg'),
                          ),
                          SizedBox(
                            width: 0.1.sw,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText('Ac Basic Service', black, 20,
                                  fontWeight: FontWeight.bold),
                              customText('In Ac Servicing', black, 16),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w300),
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
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
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
