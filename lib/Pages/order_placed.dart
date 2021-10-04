import 'package:wssalapp/Components/bottom_bar.dart';
import 'package:wssalapp/Locale/locales.dart';
import 'package:wssalapp/Routes/routes.dart';
import 'package:wssalapp/Themes/colors.dart';
import 'package:flutter/material.dart';

class OrderPlaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.all(60.0),
            child: Image.asset(
              'images/order_placed.png',
              height: 265.7,
              width: 260.7,
            ),
          ),
          Text(
            AppLocalizations.of(context).placed,
            style:
            Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 23.3),
          ),
          Text(
            AppLocalizations.of(context).thanks,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: kDisabledColor),
          ),
          Spacer(
            flex: 2,
          ),
          BottomBar(
            text: AppLocalizations.of(context).orderText,
            onTap: () => Navigator.pushNamed(context, PageRoutes.orderPage),
          )
        ],
      ),
    );
  }
}
