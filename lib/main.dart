import 'package:wssalapp/Auth/login_navigator.dart';
import 'package:wssalapp/Locale/locales.dart';
import 'package:wssalapp/Routes/routes.dart';
import 'package:wssalapp/language_cubit.dart';
import 'package:wssalapp/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(Phoenix(child: WssalApp()));
}

class WssalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (context) => LanguageCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme){
          return BlocBuilder<LanguageCubit, Locale>(
            builder: (_, locale){
              return MaterialApp(
                localizationsDelegates: [
                  const AppLocalizationsDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: [
                  const Locale('en'),
                  const Locale('ar'),
                ],
                locale: locale,
                theme: theme,
                home: LoginNavigator(),
                routes: PageRoutes().routes(),
              );
            },
          );
        },
      ),
    );
  }
}
