import 'package:articals/presentation/color_managment.dart';
import 'package:articals/presentation/style_manager.dart';
import 'package:articals/presentation/value_manager.dart';
import 'package:articals/widget/foter.dart';
import 'package:articals/widget/header.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

List<dynamic> image = [
  "assets/images/dactor.png",
  "assets/images/dactor.png",
];
final controller = PageController(
  keepPage: true,
  initialPage: 0,
  viewportFraction: 0.8,
);
var scaffoldState = GlobalKey<ScaffoldState>();

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    final images = List.generate(
      image.length,
      (index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image[index],
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBoxWidgetHight(size: 0.08),
                    const HeaderWidget(),
                    // build card view List >>>>>>>>>>>>>>>>>>>>>>>
                    const SizedBoxWidgetHight(size: 0.04),
                    Container(
                      padding: EdgeInsets.zero,
                      height: 280,
                      child: PageView.builder(
                        itemCount: images.length,
                        reverse: false,
                        controller: controller,
                        itemBuilder: (_, index) {
                          return images[index % images.length];
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: MargenManager.m8),
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: image.length,
                        effect: WormEffect(
                            dotHeight: 5,
                            dotWidth: 20,
                            type: WormType.thin,
                            activeDotColor: ColorManagment.primary),
                      ),
                    ),
                    const SizedBoxWidgetHight(size: 0.03),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: PaddeingManager.p16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "\"الروضة وحولي\"",
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w700, ColorManagment.blackColor),
                          ),
                          Text(
                            'لمساهمي',
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w700, ColorManagment.blackColor),
                          ),
                          Text(
                            " %",
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w700, ColorManagment.blackColor),
                          ),
                          Text(
                            "50",
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w700, ColorManagment.primary),
                          ),
                          Text(
                            " خصم",
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w700, ColorManagment.blackColor),
                          ),
                        ],
                      ),
                    ),
                    const SizedBoxWidgetHight(size: 0.02),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: PaddeingManager.p16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "بروفيشنال وي كير",
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w700, ColorManagment.primary),
                          ),
                          Text(
                            " مختبر مستوصف",
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w700, ColorManagment.blackColor),
                          ),
                        ],
                      ),
                    ),
                    const SizedBoxWidgetHight(size: 0.03),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: PaddeingManager.p16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: const [
                              Image(
                                image: AssetImage("assets/images/smile.png"),
                                height: 80,
                                width: 80,
                              ),
                              Image(
                                image:
                                    AssetImage("assets/images/logoWecan.png"),
                                height: 80,
                                width: 80,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            ": للتواصل والاستفسار",
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w400, ColorManagment.primary),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: PaddeingManager.p16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "92219914",
                            style: getTextStyle(SizeManager.s16,
                                FontWeight.w700, ColorManagment.blackColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const FoterWidget(),
            const SizedBoxWidgetHight(size: 0.02),
          ],
        ),
      ),
    );
  }
}

class SizedBoxWidgetHight extends StatelessWidget {
  final double size;

  const SizedBoxWidgetHight({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * size,
    );
  }
}
