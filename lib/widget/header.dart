import 'package:articals/presentation/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          color: Colors.white,
          child: Center(
            child: Image.asset(
              "assets/images/logoWecan.png",
              height: 90,
              width: 90,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: MargenManager.m18,
            right: MargenManager.m16,
          ),
          child: SvgPicture.asset("assets/icon/backIcon.svg"),
        ),
      ],
    );
  }
}
