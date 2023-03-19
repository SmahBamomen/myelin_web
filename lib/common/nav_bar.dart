import 'package:flutter/material.dart';
import 'package:myelin_web/common/text_widget.dart';
import 'package:get/get.dart';
import 'package:myelin_web/constants/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool selected = false;
  bool open = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return width < 767
        ? Container(
            width: width,

            //padding: EdgeInsets.all(width / 90),
            padding: EdgeInsets.only(left: width / 40, right: width / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: width / 30),
                InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    setState(() {
                      open = !open;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        !open ? Icons.menu : Icons.close,
                        color: Colors.black,
                        size: width / 18,
                      ),
                    ],
                  ),
                ),
                open
                    ? Container(
                        height: height / 1.8,
                        width: width,
                        padding: Get.locale.toString() == 'ar_AR'
                            ? EdgeInsets.only(
                                left: width * 0.008,
                              )
                            : EdgeInsets.only(
                                right: width * 0.008,
                              ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });

                                  widget.scrollController!.animateTo(
                                      width / 1.2,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'brief'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });
                                  widget.scrollController!.animateTo(
                                      width / 0.7,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'story'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });
                                  widget.scrollController!.animateTo(
                                      width / 0.5,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'vision'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });
                                  widget.scrollController!.animateTo(
                                      width / 0.4,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'message'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });
                                  widget.scrollController!.animateTo(
                                      width / 0.3,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'problem&solution'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });
                                  widget.scrollController!.animateTo(
                                      width / 0.20,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'services'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });
                                  widget.scrollController!.animateTo(
                                      width / 0.20,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'addedValue'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });
                                  widget.scrollController!.animateTo(
                                      width / 0.188,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'clients'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width,
                              child: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    open = !open;
                                  });
                                  widget.scrollController!.animateTo(
                                      width / 0.188,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                },
                                child: TextWidget(
                                  fontSize: width / 20,
                                  text: 'socialMedia'.tr,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          )
        : Container(
            height: height / 10,
            color: Colors.white,
            child: SizedBox(
              width: width / 1.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 1.5,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'brief'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 0.8,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'story'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 0.55,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'vision'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 0.45,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'message'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 0.2,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'problem&solution'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 0.28,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'services'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 0.20,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'addedValue'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 0.18,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'clients'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: (() {
                      widget.scrollController!.animateTo(width / 0.178,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }),
                    child: TextWidget(
                      fontSize: width / 65,
                      text: 'socialMedia'.tr,
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
