import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jameia_tabs/utilities/constants.dart';

class ExitAppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: kDefaultPadding * 3, left: kDefaultPadding * 1.5),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white,
          ),
          child: IconButton(
              icon: SvgPicture.asset('assets/icons/logout.svg'),
              onPressed: () {}),
        ),
      ),
    );
  }
}
