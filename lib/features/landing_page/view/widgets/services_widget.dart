import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myelin_web/common/text_widget.dart';
import 'package:myelin_web/constants/colors.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({Key? key}) : super(key: key);

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
              text: "services".tr,
              color: orangeColor,
              fontSize: size.width / 20
          ),
          SizedBox(height: size.width/42),


          clientsWidget(size,'المحادثة الفورية مع العديد من الأطباء والمختصين؛ للحصول على الاستشارات.'),
SizedBox(height: size.width/35),
          clientsWidget(size,'الحصول على استشارة أخصائي العلاج الطبيعي لمساعدته في تطبيق العلاج الطبيعي من المنزل'),
          SizedBox(height: size.width/35),
          clientsWidget(size,'أخصائي التغذية'),
          SizedBox(height: size.width/35),
          clientsWidget(size,'أخصائي نفسي لتقديم جلسات استشارية ومتابعة'),
          SizedBox(height: size.width/35),
          clientsWidget(size,'سيشمل التطبيق أجزاء متنوّعة وأدوات تُنظّم مواعيد العلاج الطبيعي والرياضة والنظام الغذائي'),
          SizedBox(height: size.width/35),
          clientsWidget(size,'مواعيد تناول الأدوية'),
          SizedBox(height: size.width/35),
          clientsWidget(size,'ومواعيد وأماكن جلسات الدعم والإرشاد النفسي'),
          SizedBox(height: size.width/35),
          clientsWidget(size,'سيوفر ألعاب تحفيزية'),
          SizedBox(height: size.width/35),
          clientsWidget(size,'تساعد المرضى على تحسيّن صحتهم النفسية'),
          SizedBox(height: size.width/35),
          clientsWidget(size,'خدمات المتابعة على الواتس اب'),

          SizedBox(height: size.width/15),
        ],
      ),
    );
  }
  Widget clientsWidget(Size size , String text){
    return   Container(
width: size.width,
      height: size.width/10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: midWhiteColor,
      ),
      padding: EdgeInsets.only(left: size.width/22,right: size.width/22),
      margin: EdgeInsets.only(left: size.width/22,right: size.width/22),
      child: Center(
        child: TextWidget(
          textAlign: TextAlign.center,
            text:text,
            color: purpleColor,
            fontSize: size.width / 35
        ),
      ),
    );
  }
}
