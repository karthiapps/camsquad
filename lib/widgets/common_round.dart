import 'package:camsquad/src/images.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class GrayRound extends StatelessWidget {
   const GrayRound({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(AssetData.imgBgGrey,height: 50,width: 50,)
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 5),
            child: Center(child: SvgPicture.asset(imgUrl))
        ),
      ],
    );
  }
}
class BlueRound extends StatelessWidget {
  const BlueRound({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            alignment: Alignment.center,
            child: SvgPicture.asset(AssetData.imgBgBlue,height: 50,width: 50,)
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 5),
            child: Center(child: SvgPicture.asset(imgUrl))
        ),
      ],
    );
  }
}
class PinkRound extends StatelessWidget {
  const PinkRound({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            alignment: Alignment.center,
            child: SvgPicture.asset(AssetData.imgBgPink,height: 50,width: 50,)
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 5),
            child: Center(child: SvgPicture.asset(imgUrl))
        ),
      ],
    );
  }
}
