import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myelin_web/common/responsive_widget.dart';
import 'package:myelin_web/common/text_widget.dart';
import 'package:myelin_web/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ResponsiveWidget.isSmallScreen(context)
    return Container(
      color: purpleColor,
      width: size.width,
      child: Column(
        children: [
          SizedBox(height: size.width / 15),
          SizedBox(
            width: size.width / 1.2,
            child: TextWidget(
                text: "socialMediaDes".tr,
                textAlign: TextAlign.center,
                color: Colors.white,
                fontSize: size.width / 30),
          ),
          SizedBox(height: size.width / 35),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () async {
                    final uri = Uri.parse(

                        'https://twitter.com/30Myelin');
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $uri';
                    }
                  },
                  child: Image.asset('assets/images/BsTwitter.png',scale:  ResponsiveWidget.isSmallScreen(context)?size.width/100:size.width/500,)),
              SizedBox(width: size.width / 30),
              InkWell(
                  onTap: () async {
                    final uri = Uri.parse(
                        'https://www.instagram.com/myelin.30/');
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $uri';
                    }
                  },
                  child: Image.asset('assets/images/RiInstagramFill.png',scale:  ResponsiveWidget.isSmallScreen(context)?size.width/100:size.width/500,)),
              SizedBox(width: size.width / 30),
              InkWell(
                  onTap: () async {
                    final uri = Uri.parse(
                        'https://www.instagram.com/thegarageksa/');
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $uri';
                    }
                  },
                  child: Image.asset('assets/images/GrFacebook.png',scale:  ResponsiveWidget.isSmallScreen(context)?size.width/100:size.width/500,)),
              SizedBox(width: size.width / 30),
              InkWell(
                  onTap: ()async{
                    String email = Uri.encodeComponent("myelin.30@gmail.com");
                    final uri = Uri.parse('mailto:$email');
                    if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                    } else {
                    throw 'Could not launch $uri';
                    }
                  },
                  child: Icon(Icons.email_outlined,color: Colors.white,size:ResponsiveWidget.isSmallScreen(context)?size.width/20:size.width/40,)),
              SizedBox(width: size.width / 30),
              InkWell(
                  onTap: ()async{
                    var whatsappUrl =
                        "https://wa.link/ltjgl3";
                    try {
                      launch(whatsappUrl);
                    } catch (e){
                      throw 'Could not launch ';
                    }
                  },

                  child: Icon(Icons.phone,color: Colors.white,size: ResponsiveWidget.isSmallScreen(context)?size.width/25:size.width/40,)),
            ],
          ),
          SizedBox(height: size.width / 35),
          SizedBox(
            width: size.width / 1.2,
            child: TextWidget(
                text: 'مظلة كنان للبحث ولبتطوير - 1010861525',
                textAlign: TextAlign.center,
                color: Colors.white,
                fontSize: size.width / 45),
          ),
          SizedBox(height: size.width / 50),
          SizedBox(
            width: size.width / 1.2,
            child: TextWidget(
                text: '\u00a9'+' جميع الحقوق محفوظة لدى مايلين  ',
                textAlign: TextAlign.center,
                color: Colors.white,
                fontSize: size.width / 45),
          ),
          SizedBox(height: size.width / 50),
        ],
      ),
    );
  }
}
