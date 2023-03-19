import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myelin_web/common/text_widget.dart';
import 'package:myelin_web/constants/colors.dart';

class ProblemAndSolutionWidget extends StatelessWidget {
  const ProblemAndSolutionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ResponsiveWidget.isSmallScreen(context)
    return Container(
      color: purpleColor,
      width: size.width,
      child: Column(
        children: [
          SizedBox(height: size.width/15),
          TextWidget(
              text: "problem&solution".tr,
              color: Colors.white,
              fontSize: size.width / 20
          ),
          SizedBox(height: size.width/42),
          SizedBox(
            width: size.width/1.2,
            child: TextWidget(
                text: "problem&solutionDes".tr,
                textAlign: TextAlign.center,
                color: Colors.white,
                fontSize: size.width / 30
            ),
          ),
          SizedBox(height: size.width/15),
        ],
      ),
    );
  }
}
