import 'package:flutter/material.dart';
import 'package:quality_service_delivery/constant/const.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                return Card(
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget customRichText1(String text1, text2, text3) => RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
        children: <TextSpan>[
          TextSpan(text: text1, style: TextStyle(color: black)),
          TextSpan(text: text2, style: TextStyle(color: mainColor)),
          TextSpan(text: text3, style: TextStyle(color: black))
        ],
      ),
      textScaleFactor: 0.5,
    );
