import 'package:wssalapp/Chat/UI/animated_bottom_bar.dart';
import 'package:wssalapp/HomeOrderAccount/Account/UI/account_page.dart';
import 'package:wssalapp/HomeOrderAccount/Home/UI/home.dart';
import 'package:wssalapp/HomeOrderAccount/Order/UI/order_page.dart';
import 'package:wssalapp/Locale/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeOrderAccount extends StatefulWidget {
  @override
  _HomeOrderAccountState createState() => _HomeOrderAccountState();
}

class _HomeOrderAccountState extends State<HomeOrderAccount> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static String bottomIconHome = 'images/footermenu/ic_home.png';

  static String bottomIconOrder = 'images/footermenu/ic_orders.png';

  static String bottomIconAccount = 'images/footermenu/ic_profile.png';

  @override
  Widget build(BuildContext context) {
    var appLocalization = AppLocalizations.of(context);
    final List<BarItem> barItems = [
      BarItem(
        text: appLocalization.homeText,
        image: bottomIconHome,
      ),
      BarItem(
        text: appLocalization.orderText,
        image: bottomIconOrder,
      ),
      BarItem(
        text: appLocalization.account,
        image: bottomIconAccount,
      ),
    ];

    final List<Widget> _children = [
      HomePage(),
      OrderPage(),
      AccountPage(),
    ];
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: barItems,
          onBarTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
