import 'package:flutter/material.dart';
import 'package:jameia_tabs/utilities/constants.dart';

class HowAppWorks extends StatelessWidget {
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
        'للاشتراك بالجمعية يجب على المشترك  بالتطبيق من \nخلال البيانات التالية \nالاسم\nرقم الهوية\nرقم الجوال المعتمد في البنك\nالبريد الالكتروني\nاسم البنك\nرقم الحساب البنكي\nرقم هاتف احد الأقارب\n\nبعد التسجيل يتم عرض كافة الجمعيات المقترحة \nيقوم الشخص باختيار الجمعية المناسبة له  حسب \nالقسط الشهري المناسب له \nثم يتم اختيار الشهر المناسب للمشترك الذي يود \nاستلام الجمعية بها ( حيث يظهر فقط الأشهر المتاحة\n بعد ان يقوم الاخرون بحجز اشهرهم)\nالمبلغ الذي يستلمه المشترك يكون منقوص \nبمقدار 40% من قسط اول شهر  حسب المثال التالي \nالقسط الشهري 500 ريال سعودي , ومدة الجمعية \nنفرض 6 اشهر \nالاستقطاع = (500*40%) = 200\nالمبلغ المستحق للمشترك = (500*6) –200=2800',
        style: TextStyle(
          fontSize: 13,
          color: const Color(0xff313131),
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
        ),
        SizedBox(width: kDefaultPadding),
        Text(
          'آلية التطبيق',
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
