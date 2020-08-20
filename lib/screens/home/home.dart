import 'package:flutter/material.dart';
import 'package:jameia_tabs/screens/home/home_tabs/about_the_association.dart';
import 'package:jameia_tabs/screens/home/home_tabs/how_app_work.dart';
import 'package:jameia_tabs/screens/home/home_tabs/list_of_banks.dart';
import 'package:jameia_tabs/shared_ui/shared_appBar.dart';
import 'package:jameia_tabs/utilities/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int _selectedPage = 0;
  final List<String> listTitleAppBar = [
    "الجمعية",
    "قائمة البنوك",
    "عن الجمعية",
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: <Widget>[
            SharedAppBar(title: listTitleAppBar[_selectedPage], subtitle: ''),
            contentTabBar(context),
          ],
        ),
      ),
    );
  }

  Align contentTabBar(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * .75 + 2,
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            tabs(),
            tabsView(),
          ],
        ),
      ),
    );
  }

  Expanded tabsView() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HowAppWorks(),
          ListOfBanks(),
          AboutTheAssociation(),
        ],
      ),
    );
  }

  Container tabs() {
    return Container(
      height: 60,
      child: TabBar(
        controller: _tabController,
        indicatorWeight: 0.00001,
        labelPadding: EdgeInsets.all(0),
        unselectedLabelColor: Colors.black,
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
        tabs: <Widget>[
          _nameOfTabs('آلية التطبيق'),
          _nameOfTabs('قائمة البنوك'),
          _nameOfTabs('عن الجمعية'),
        ],
      ),
    );
  }

  Widget _nameOfTabs(String title) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
        gradient: kGradientUnSelectedTabBar,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
