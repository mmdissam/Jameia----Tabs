import 'package:flutter/material.dart';
import 'package:jameia_tabs/utilities/constants.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: kDefaultPadding * 4),
              logo(context),
              SizedBox(height: kDefaultPadding * 2),
              textContent(),
              gradientButton(context),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }

  Container textContent() {
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 1.5,
          bottom: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'فكرة الجمعية',
            style: TextStyle(
                fontFamily: 'Rubik-Medium',
                fontSize: 24,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500),
          ),
          Text(
            'هي عباره عن فكره بسيطه بدآت منذ عشرات السنوات بين الاسره والاصدقاء لمساعده بعضهم البعض في الحصول علي احتياجاتهم الماليه دون الاقتراض من البنوك او الاصدقاء.',
            style: TextStyle(
              fontSize: 14,
              color: const Color(0xff313131),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Container logo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/Bitmap.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget gradientButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding),
        width: 125.0,
        height: 50.0,
        decoration: BoxDecoration(
          gradient: kGradient,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            'التالي',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          minWidth: double.infinity,
          height: 50,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
