import 'package:flutter/material.dart';

class FoterWidget extends StatelessWidget {
  const FoterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(child: Image.asset("assets/images/face.png")),
          CircleAvatar(child: Image.asset("assets/images/insta.png")),
          CircleAvatar(
            child: Image.asset("assets/images/phone.png"),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
