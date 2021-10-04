import 'package:wssalapp/Locale/locales.dart';
import 'package:wssalapp/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:wssalapp/Themes/colors.dart';
import 'package:wssalapp/Themes/style.dart';
import 'package:wssalapp/HomeOrderAccount/Home/UI/order_placed_map.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).orderText,
            style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderMapPage(
              pageTitle: AppLocalizations.of(context).vegetable,
            ),
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 51.0,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context).process,
                style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Color(0xff99a596),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(
                    'images/maincategory/vegetables_fruitsact.png',
                    scale: 5,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).vegetable,
                      style: Theme.of(context).textTheme.caption.copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '20 June, 11:35am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).pickup,
                          style: orderMapAppBarTextStyle.copyWith(
                              color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '\$ 11.50 | ${AppLocalizations.of(context).paypal}',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 1.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Icon(Icons.location_on,color: kMainColor,size: 13.3,),
                ),
                Text(
                  AppLocalizations.of(context).store + '\t',
                  style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 10.0, letterSpacing: 0.05,fontWeight: FontWeight.bold),
                ),
                Text(
                  '(Union Market)',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 10.0, letterSpacing: 0.05),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Icon(Icons.navigation,color: kMainColor,size: 13.3,),
                ),
                Text(
                  AppLocalizations.of(context).homeText,
                  style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 10.0, letterSpacing: 0.05,fontWeight: FontWeight.bold),
                ),
                Text(
                  '\t(Central Residency)',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 10.0, letterSpacing: 0.05),
                ),
              ],
            ),
            Container(
              height: 51.0,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context).past,
                style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Color(0xff99a596),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(
                    'images/maincategory/vegetables_fruitsact.png',
                    scale: 5,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).vegetable,
                      style: Theme.of(context).textTheme.caption.copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '20 June, 11:35am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).deliv,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '\$ 11.50 | ${AppLocalizations.of(context).credit}',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 1.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Icon(Icons.location_on,color: kMainColor,size: 13.3,),
                ),
                Text(
                  AppLocalizations.of(context).store + '\t',
                  style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 10.0, letterSpacing: 0.05,fontWeight: FontWeight.bold),
                ),
                Text(
                  '(Union Market)',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 10.0, letterSpacing: 0.05),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, PageRoutes.rate),
                    child: Text(
                      AppLocalizations.of(context).rate,
                      style:
                          orderMapAppBarTextStyle.copyWith(color: kMainColor),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Icon(Icons.navigation,color: kMainColor,size: 13.3,),
                ),
                Text(
                  AppLocalizations.of(context).homeText,
                  style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 10.0, letterSpacing: 0.05,fontWeight: FontWeight.bold),
                ),
                Text(
                  '\t(Central Residency)',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 10.0, letterSpacing: 0.05),
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
