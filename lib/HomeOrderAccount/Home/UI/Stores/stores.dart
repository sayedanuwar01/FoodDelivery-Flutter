import 'package:wssalapp/Components/custom_appbar.dart';
import 'package:wssalapp/Locale/locales.dart';
import 'package:wssalapp/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:wssalapp/Routes/routes.dart';

class StoresPage extends StatelessWidget {
  final String pageTitle;

  StoresPage(this.pageTitle);

  final int noOfStores = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(126.0),
        child: CustomAppBar(
          titleWidget: Text(
            pageTitle,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          hint: AppLocalizations.of(context).search,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Text(
              '$noOfStores ' + AppLocalizations.of(context).storeFound,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: kHintColor),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, PageRoutes.items),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 25.3, right: 20.0),
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage("images/veg/Sellers/Layer 1.png"),
                    height: 93.3,
                  ),
                  SizedBox(width: 13.3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context).store,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              .copyWith(color: Theme.of(context).secondaryHeaderColor)),
                      SizedBox(height: 8.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: kIconColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('6.4 km ',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                      color: kLightTextColor, fontSize: 10.0)),
                          Text('| ',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(color: kMainColor, fontSize: 10.0)),
                          Text(AppLocalizations.of(context).storeAddress,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                      color: kLightTextColor, fontSize: 10.0)),
                        ],
                      ),
                      SizedBox(height: 10.3),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: kIconColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('20 MINS',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                      color: kLightTextColor, fontSize: 10.0)),
                        ],
                      ),
                      SizedBox(height: 10.3),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: kMainColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('4.2',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kMainColor, fontSize: 10.0,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          InkWell(
            onTap: () => Navigator.pushNamed(context, PageRoutes.items),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 25.3, right: 20.0),
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage("images/veg/Sellers/Layer 2.png"),
                    height: 93.3,
                  ),
                  SizedBox(width: 13.3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context).store,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              .copyWith(color: Theme.of(context).secondaryHeaderColor)),
                      SizedBox(height: 8.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: kIconColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('8.9 km ',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kLightTextColor, fontSize: 10.0)),
                          Text('| ',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(color: kMainColor, fontSize: 10.0)),
                          Text(AppLocalizations.of(context).storeAddress,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kLightTextColor, fontSize: 10.0)),
                        ],
                      ),
                      SizedBox(height: 10.3),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: kIconColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('22 MINS',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kLightTextColor, fontSize: 10.0)),
                        ],
                      ),
                      SizedBox(height: 10.3),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: kMainColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('4.8',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kMainColor, fontSize: 10.0,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          InkWell(
            onTap: () => Navigator.pushNamed(context, PageRoutes.items),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 25.3, right: 20.0),
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage("images/veg/Sellers/Layer 3.png"),
                    height: 93.3,
                  ),
                  SizedBox(width: 13.3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context).store,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              .copyWith(color: Theme.of(context).secondaryHeaderColor)),
                      SizedBox(height: 8.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: kIconColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('5.0 km ',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kLightTextColor, fontSize: 10.0)),
                          Text('| ',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(color: kMainColor, fontSize: 10.0)),
                          Text(AppLocalizations.of(context).storeAddress,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kLightTextColor, fontSize: 10.0)),
                        ],
                      ),
                      SizedBox(height: 10.3),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: kIconColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('12 MINS',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kLightTextColor, fontSize: 10.0)),
                        ],
                      ),
                      SizedBox(height: 10.3),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: kMainColor,
                            size: 10,
                          ),
                          SizedBox(width: 10.0),
                          Text('4.5',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                  color: kMainColor, fontSize: 10.0,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
