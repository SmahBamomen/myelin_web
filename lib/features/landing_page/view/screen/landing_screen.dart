import 'package:flutter/material.dart';
import 'package:myelin_web/common/nav_bar.dart';
import 'package:myelin_web/common/responsive_widget.dart';
import 'package:myelin_web/features/landing_page/landing_controller.dart';
import 'package:myelin_web/features/landing_page/view/widgets/added_value_widget.dart';
import 'package:myelin_web/features/landing_page/view/widgets/brief_widget.dart';
import 'package:myelin_web/features/landing_page/view/widgets/clients_widget.dart';
import 'package:myelin_web/features/landing_page/view/widgets/message_widget.dart';
import 'package:myelin_web/features/landing_page/view/widgets/problem_solution_widget.dart';
import 'package:myelin_web/features/landing_page/view/widgets/services_widget.dart';
import 'package:myelin_web/features/landing_page/view/widgets/social_media_widget.dart';
import 'package:myelin_web/features/landing_page/view/widgets/story_widget.dart';
import 'package:myelin_web/features/landing_page/view/widgets/vision_widget.dart';
import 'package:get/get.dart';
class LandingScreen extends StatelessWidget {
   LandingScreen({Key? key}) : super(key: key);
   final controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var list = [
      ResponsiveWidget.isSmallScreen(context) ? SizedBox(height: size.width/5):SizedBox(height: size.width/15),
      Padding(
        padding:  EdgeInsets.only(left: size.width/8,right:size.width/8 ),
        child: Image.asset('assets/images/mockup.png'),
      ),
      SizedBox(height: size.width/15),
      const BriefWidget(),
      const  StoryWidget(),
      const   VisionWidget(),
      const   MessageWidget(),
      const   ProblemAndSolutionWidget(),
      const   ServicesWidget(),
      const   AddValueWidget(),
      const   ClientsWidget(),
      const   SocialMediaWidget(),

    ];
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children:  [

              NavBar(scrollController:controller.scrollController ,),

              SizedBox(
                height: size.height,
                child:  ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: ListView.builder(

                    controller: controller.scrollController,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return list[index];
                    },
                  ),
                ),
              ),



            ],
          ),
        ));
  }
}
