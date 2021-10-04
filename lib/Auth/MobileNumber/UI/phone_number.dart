import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wssalapp/Auth/MobileNumber/UI/mobile_input.dart';
import 'package:wssalapp/Auth/login_navigator.dart';
import 'package:wssalapp/Locale/locales.dart';
import 'package:wssalapp/Themes/colors.dart';

//first page that takes phone number as input for verification
class PhoneNumber extends StatelessWidget {
  static const String id = 'phone_number';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //used for scrolling when keyboard pops up
        child: Container(
          color: Theme.of(context).cardColor,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(),
              Image.asset(
                "images/logos/logo_user.png",
                scale: 4, //delivoo logo
              ),
              Spacer(),
              Image.asset(
                "images/logos/Delivery.gif", //footer image
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: MobileInput(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 32.0,
                  color: Theme.of(context).cardColor,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context).or,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, LoginRoutes.socialLogin),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  color: Color(0xff3a559f),
                  child: Row(
                    children: [
                      Spacer(),
                      Image.asset(
                        'images/ic_login_facebook.png',
                        height: 19.0,
                        width: 19.7,
                      ),
                      SizedBox(
                        width: 34.0,
                      ),
                      Text(AppLocalizations.of(context).continueWith,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kWhiteColor)),
                      Text(AppLocalizations.of(context).facebook,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kWhiteColor, fontWeight: FontWeight.bold)),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, LoginRoutes.socialLogin),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  color: kWhiteColor,
                  child: Row(
                    children: [
                      Spacer(),
                      Image.asset('images/ic_login_google.png',
                          height: 19.0, width: 19.7),
                      SizedBox(
                        width: 34.0,
                      ),
                      Text(
                        AppLocalizations.of(context).continueWith,
                        style: Theme.of(context).textTheme.caption.copyWith(color: kMainTextColor),
                      ),
                      Text(AppLocalizations.of(context).google,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(fontWeight: FontWeight.bold,color: kMainTextColor)),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, LoginRoutes.socialLogin),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  color: Color(0xff000000),
                  child: Row(
                    children: [
                      Spacer(),
                      Image.asset('images/ic_login_apple.png',
                          height: 19.0, width: 19.7),
                      SizedBox(
                        width: 34.0,
                      ),
                      Text(AppLocalizations.of(context).continueWith,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kWhiteColor)),
                      Text(AppLocalizations.of(context).apple,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kWhiteColor, fontWeight: FontWeight.bold)),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
