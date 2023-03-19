import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myelin_web/common/text_widget.dart';
import 'package:myelin_web/constants/colors.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ResponsiveWidget.isSmallScreen(context)
    return Container(
      width: size.width,
      child: Column(
        children: [
          SizedBox(height: size.width/15),
          TextWidget(
              text: "story".tr,
              color: orangeColor,
              fontSize: size.width / 20
          ),
          SizedBox(height: size.width/42),
          SizedBox(
            width: size.width/1.2,
            child: TextWidget(
                text: "storyDes".tr,
                textAlign: TextAlign.center,
                color: purpleColor,
                fontSize: size.width / 30
            ),
          ),
          SizedBox(height: size.width/15),
        ],
      ),
    );
  }
}
