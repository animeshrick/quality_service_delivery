import 'package:flutter/material.dart';

import '../const.dart';

Widget customGridview(Function()? onTap, crossCount, itemcount, image, text) =>
    GridView.builder(
      
        shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossCount),
        itemCount: itemcount,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: onTap,
            child: Card(
                // elevation: 5,
                shadowColor: black,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        // height: 90,
                        child: Image.asset(
                          image,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Flexible(child: customText(text, black, 15))
                    ],
                  ),
                )),
          );
        });
