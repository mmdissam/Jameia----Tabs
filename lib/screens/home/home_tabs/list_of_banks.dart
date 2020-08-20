import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jameia_tabs/utilities/constants.dart';

class ListOfBanks extends StatelessWidget {
  List<String> _nameOfBanks = [
    "بنك الراجحي(1)",
    "بنك الراجحي(2)",
    "بنك الراجحي(3)",
    "بنك الراجحي(4)",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        color: kBackgroundColor,
        child: Column(
          children: <Widget>[
            iconAndTitle(),
            SizedBox(height: kDefaultPadding),
            generateBanks(context),
          ],
        ),
      ),
    );
  }

  Container generateBanks(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(height: kDefaultPadding),
        scrollDirection: Axis.vertical,
        itemCount: _nameOfBanks.length,
        itemBuilder: (context, index) =>
            _listOfBand(context, index, _nameOfBanks[index]),
      ),
    );
  }

  Row iconAndTitle() {
    return Row(
      children: <Widget>[
        Container(
          width: 55.0,
          height: 55.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            color: kBackgroundIcons,
          ),
          child: IconButton(
              icon: SvgPicture.asset('assets/icons/money.svg'),
              onPressed: () {}),
        ),
        SizedBox(width: kDefaultPadding),
        Text(
          'البنوك المتعاونة',
          style: TextStyle(
            fontSize: 18,
            color: const Color(0xffd4051e),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

  Widget _listOfBand(BuildContext context, int index, String nameOfBank) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xffffffff),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: const Color(0xccfe9c5e),
            ),
            child: SvgPicture.asset('assets/icons/bank.svg'),
          ),
          // Adobe XD layer: 'Guest' (text)
          Text(
            nameOfBank,
            style: TextStyle(
              fontSize: 19,
              color: const Color(0xff313131),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
