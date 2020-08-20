import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jameia_tabs/utilities/constants.dart';

class AboutTheAssociation extends StatelessWidget {
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
            contentText(context),
          ],
        ),
      ),
    );
  }

  Container contentText(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: kBackgroundContainer,
      ),
      child: Text(
        'هي عباره عن فكره بسيطه بدآت منذ عشرات السنوات'
        ' بين الاسره والاصدقاء لمساعده بعضهم البعض في الحصول علي احتياجاتهم المالية دون الاقتراض من البنوك او الأصدقاء والمعاناة في تقديم ضمانات أو عقارات للبنوك للحصول على أموال ودفع فوائد بنكية.\nوفي الغالب كانت مبالغ مالية بسيطة بهدف مساعدة بعضهم البعض وليس التجارة.\nوهي عباره عن حساب بنكي يشترك به عده اشخاص لايداع مبلغ مالي ثابت كل شهر  لمده معينه من الشهور كلا حسب امكانياته المادية وحسب الاتفاق علي قيمه الجمعية وحسب عداد المشتركين.\nالمهم في نجاح هذه الفكرة هي التزام جميع المشتركين ( في الجمعية ) بدفع ما عليهم من التزام في الصندوق في نفس الوقت المحدد دون'
        ' تأخير كي يستفيد الجميع من المال والوقت.',
        style: TextStyle(
          letterSpacing: 2,
          fontSize: 13,
          color: Color(0xff313131),
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.right,
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
              icon: SvgPicture.asset('assets/icons/info.svg'),
              onPressed: () {}),
        ),
        SizedBox(width: kDefaultPadding),
        Text(
          'عن الجمعية',
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
}
