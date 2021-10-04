import 'package:wssalapp/Components/custom_appbar.dart';
import 'package:wssalapp/Locale/locales.dart';
import 'package:wssalapp/Routes/routes.dart';
import 'package:wssalapp/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

List<String> list = ['1 kg', '500 g', '250 g'];
List<String> list1 = ['\$ 3.00', '\$ 2.00', '\$ 1.50'];

class ItemsPage extends StatefulWidget {
  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  int itemCount = 0;
  int itemCount1 = 0;
  int itemCount2 = 0;

  @override
  Widget build(BuildContext context) {
    var appLocalization = AppLocalizations.of(context);
    final List<Tab> tabs = <Tab>[
      Tab(text: appLocalization.vegetables),
      Tab(text: appLocalization.fruits),
      Tab(text: appLocalization.herbs),
      Tab(text: appLocalization.dairy),
    ];
    return Stack(
      children: <Widget>[
        DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(176.0),
              child: CustomAppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.search),
                  )
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(0.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(
                          context, PageRoutes.review),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(AppLocalizations.of(context).store,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Theme.of(context).secondaryHeaderColor)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: kIconColor,
                                size: 10,
                              ),
                              SizedBox(width: 10.0),
                              Text('6.4 km ',
                                  style: Theme.of(context).textTheme.overline),
                              Text('| ',
                                  style: Theme.of(context).textTheme.overline.copyWith(color: kMainColor)),
                              Text(AppLocalizations.of(context).storeAddress,
                                  style: Theme.of(context).textTheme.overline),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: kIconColor,
                                size: 10,
                              ),
                              SizedBox(width: 10.0),
                              Text('20 MINS',
                                  style: Theme.of(context).textTheme.overline),
                              Spacer(),
                              Icon(
                                Icons.star,
                                color: kMainColor,
                                size: 10,
                              ),
                              SizedBox(width: 8.0),
                              Text('4.2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline
                                      .copyWith(color: kMainColor)),
                              SizedBox(width: 8.0),
                              Text('148 reviews',
                                  style: Theme.of(context).textTheme.overline),
                              SizedBox(width: 8.0),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: kIconColor,
                                size: 10,
                              ),
                            ],
                          ),
                          TabBar(
                            tabs: tabs,
                            isScrollable: true,
                            labelColor: kMainColor,
                            unselectedLabelColor: kLightTextColor,
                            indicatorPadding:
                                EdgeInsets.symmetric(horizontal: 24.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: tabs.map((Tab tab) {
                return ListView(
                    children: <Widget>[
                      Divider(
                        color: Theme.of(context).cardColor,
                        thickness: 8.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Image.asset(
                              'images/veg/Vegetables/onion.png',
                              scale: 3,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 8.0),
                                  Text(AppLocalizations.of(context).onion,
                                      style: Theme.of(context).textTheme.headline2.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600)),
                                  SizedBox(height: 8.0),
                                  Text('\$ 3.00',
                                      style: Theme.of(context).textTheme.caption),
                                  SizedBox(height: 20.0),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                              height: 280,
                                              child: BottomSheetWidget());
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 30.0,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).cardColor,
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '1kg',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                          ),
                                          SizedBox(
                                            width: 8.0,
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: kMainColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            itemCount == 0
                                ? Container(
                                    height: 30.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount++;
                                        });
                                      },
                                    ),
                                  )
                                : Container(
                                    height: 30.0,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: kMainColor),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount--;
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: kMainColor,
                                            size: 20.0,
                                            //size: 23.3,
                                          ),
                                        ),
                                        SizedBox(width: 8.0),
                                        Text(itemCount.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        SizedBox(width: 8.0),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount++;
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: kMainColor,
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Image.asset(
                              'images/veg/Vegetables/tomato.png',
                              scale: 3,
                            ),
                            SizedBox(width: 12.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 8.0),
                                Text(AppLocalizations.of(context).tomato,
                                    style: Theme.of(context).textTheme.headline2.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w600)),
                                SizedBox(height: 8.0),
                                Text('\$ 4.50',
                                    style: Theme.of(context).textTheme.caption),
                                SizedBox(height: 20.0),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                            height: 280,
                                            child: BottomSheetWidget());
                                      },
                                    );
                                  },
                                  child: Container(
                                    height: 30.0,
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 12.0),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).cardColor,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '1kg',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: kMainColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            itemCount1 == 0
                                ? Container(
                              height: 30.0,
                              child: FlatButton(
                                child: Text(
                                  AppLocalizations.of(context).add,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                      color: kMainColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                textTheme: ButtonTextTheme.accent,
                                onPressed: () {
                                  setState(() {
                                    itemCount1++;
                                  });
                                },
                              ),
                            )
                                : Container(
                              height: 30.0,
                              padding:
                              EdgeInsets.symmetric(horizontal: 12.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: kMainColor),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        itemCount1--;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: kMainColor,
                                      size: 20.0,
                                      //size: 23.3,
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(itemCount1.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption),
                                  SizedBox(width: 8.0),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        itemCount1++;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: kMainColor,
                                      size: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Image.asset(
                              'images/veg/Vegetables/Cauliflower.png',
                              scale: 3,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 8.0),
                                  Text(AppLocalizations.of(context).cauliflower,
                                      style: Theme.of(context).textTheme.headline2.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600)),
                                  SizedBox(height: 8.0),
                                  Text('\$ 2.50',
                                      style: Theme.of(context).textTheme.caption),
                                  SizedBox(height: 20.0),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            height: 280.0,
                                              child: BottomSheetWidget());
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 30.0,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).cardColor,
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '1kg',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                          ),
                                          SizedBox(
                                            width: 8.0,
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: kMainColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            itemCount2 == 0
                                ? Container(
                                    height: 30.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount2++;
                                        });
                                      },
                                    ),
                                  )
                                : Container(
                                    height: 30.0,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: kMainColor),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount2--;
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: kMainColor,
                                            size: 20.0,
                                            //size: 23.3,
                                          ),
                                        ),
                                        SizedBox(width: 8.0),
                                        Text(itemCount2.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        SizedBox(width: 8.0),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount2++;
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: kMainColor,
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ],
                  );
              }).toList(),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/icons/ic_cart wt.png',
                  height: 19.0,
                  width: 18.3,
                ),
                SizedBox(width: 20.7),
                Text(
                  'Items: 2 | \$ 7.50',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white),
                ),
                Spacer(),
                FlatButton(
                  color: Colors.white,
                  onPressed: () =>
                      Navigator.pushNamed(context, PageRoutes.viewCart),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      AppLocalizations.of(context).viewCart,
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: kMainColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  textTheme: ButtonTextTheme.accent,
                  disabledColor: Colors.white,
                ),
              ],
            ),
            color: kMainColor,
            height: 60.0,
          ),
        ),
      ],
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.7,
          color: Theme.of(context).cardColor,
          padding: EdgeInsets.all(15.0),
          child: ListTile(
            title: Text(AppLocalizations.of(context).onion,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(fontSize: 15, fontWeight: FontWeight.w500)),
            subtitle: Text(AppLocalizations.of(context).vegetable,
                style:
                    Theme.of(context).textTheme.caption.copyWith(fontSize: 15)),
            trailing: FlatButton(
              color: Theme.of(context).scaffoldBackgroundColor,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                AppLocalizations.of(context).add,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: kMainColor, fontWeight: FontWeight.bold),
              ),
              textTheme: ButtonTextTheme.accent,
              disabledColor: Colors.white,
            ),
          ),
        ),
        RadioButtonGroup(
          labelStyle:
              Theme.of(context).textTheme.caption.copyWith(fontSize: 16.7),
          labels: list,
          itemBuilder: (Radio radioButton, Text title, int i) {
            return Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  leading: radioButton,
                  title: Text(
                    list[i],
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 16.7,),
                  ),
                  trailing: Text(
                    list1[i],
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 16.7),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
