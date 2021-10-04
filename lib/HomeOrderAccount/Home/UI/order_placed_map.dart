import 'package:wssalapp/HomeOrderAccount/Home/UI/slide_up_panel.dart';
import 'package:wssalapp/Locale/locales.dart';
import 'package:wssalapp/Themes/colors.dart';
import 'package:wssalapp/Themes/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderMapPage extends StatelessWidget {
  final String instruction;
  final String pageTitle;

  OrderMapPage(
      {this.instruction, this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return OrderMap(pageTitle);
  }
}

class OrderMap extends StatefulWidget {
  final String pageTitle;

  OrderMap(this.pageTitle);

  @override
  _OrderMapState createState() => _OrderMapState();
}

class _OrderMapState extends State<OrderMap> {

  @override
  void initState() {
    super.initState();
  }

  List<String> itemName = [
    'Fresh Red Onions',
    'Fresh Cauliflower',
    'Fresh Cauliflower',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          titleSpacing: 0.0,
          title: null,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.3),
                      child: Image.asset(
                        'images/maincategory/vegetables_fruitsact.png',
                        height: 42.3,
                        width: 33.7,
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          AppLocalizations.of(context).vegetable,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              letterSpacing: 0.07,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '20 June, 11:35am',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
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
                      padding: EdgeInsets.only(
                          left: 36.0, bottom: 6.0, top: 6.0, right: 12.0),
                      child: Icon(Icons.location_on,color: kMainColor,size: 13.3,),
                    ),
                    Text(
                      AppLocalizations.of(context).store,
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 10.0, letterSpacing: 0.05,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' (Union Market)',
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
                      padding: EdgeInsets.only(
                          left: 36.0, bottom: 12.0, top: 12.0, right: 12.0),
                      child: Icon(Icons.navigation,color: kMainColor,size: 13.3,),
                    ),
                    Text(
                      AppLocalizations.of(context).homeText,
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 10.0, letterSpacing: 0.05,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' (Central Residency)',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 10.0, letterSpacing: 0.05),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'images/map1.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
                SlideUpPanel(itemName),
              ],
            ),
          ),
          Container(
            height: 60.0,
            color: Theme.of(context).cardColor,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${itemName.length} items',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
