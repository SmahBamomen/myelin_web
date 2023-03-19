import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myelin_web/common/text_widget.dart';
import 'package:myelin_web/constants/colors.dart';

class ClientsWidget extends StatelessWidget {
  const ClientsWidget({Key? key}) : super(key: key);

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
              text: "clients".tr,
              color: orangeColor,
              fontSize: size.width / 20
          ),
          SizedBox(height: size.width/42),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              clientsWidget(size,'مجموعة معين'),
              SizedBox(width: size.width/22),
              clientsWidget(size,'مركز خطط العلاج للتأهيل الطبي'),



            ],
          ),
          SizedBox(height: size.width/35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              clientsWidget(size,'مركز الأخصائيون للعلاج الطبيعي'),
              SizedBox(width: size.width/22),
              clientsWidget(size,'أروقة'),

            ],
          ),
          SizedBox(height: size.width/35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              clientsWidget(size,'مؤسسة الملك خالد'),
              SizedBox(width: size.width/22),
              clientsWidget(size,'شريك نجاح'),

            ],
          ),
          SizedBox(height: size.width/15),
        ],
      ),
    );
  }

  Widget clientsWidget(Size size , String text){
    return   Container(

      height: size.width/10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: midWhiteColor,
      ),
      padding: EdgeInsets.only(left: size.width/22,right: size.width/22),
      child: Center(
        child: TextWidget(
            text:text,
            color: purpleColor,
            fontSize: size.width / 28
        ),
      ),
    );
  }
}
