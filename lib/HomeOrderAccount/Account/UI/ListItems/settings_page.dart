import 'package:wssalapp/Components/bottom_bar.dart';
import 'package:wssalapp/Locale/locales.dart';
import 'package:wssalapp/Themes/colors.dart';
import 'package:wssalapp/language_cubit.dart';
import 'package:wssalapp/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class ThemeList {
  final String title;
  final String subtitle;

  ThemeList({this.title, this.subtitle});
}

class LanguageList {
  final String title;

  LanguageList({this.title});
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  LanguageCubit _languageCubit;
  ThemeCubit _themeCubit;
  String selectedLocal;
  String selectedTheme;

  final List<LanguageList> language = <LanguageList>[
    LanguageList(
      title: 'English',
    ),
    LanguageList(
      title: 'Arabic',
    ),
    LanguageList(
      title: 'French',
    ),
    LanguageList(
      title: 'Indonesian',
    ),
    LanguageList(
      title: 'Portuguese',
    ),
    LanguageList(
      title: 'Spanish',
    )
  ];

  @override
  void initState() {
    super.initState();
    _languageCubit = BlocProvider.of<LanguageCubit>(context);
    _themeCubit = BlocProvider.of<ThemeCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    final List<ThemeList> themes = <ThemeList>[
      ThemeList(
        title: AppLocalizations.of(context).darkMode,
        subtitle: AppLocalizations.of(context).darkText,
      ),
      ThemeList(
        title: AppLocalizations.of(context).lightMode,
        subtitle: AppLocalizations.of(context).lightText,
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(AppLocalizations.of(context).settings,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.w500)),
        titleSpacing: 0.0,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 57.7,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                //color: kCardBackgroundColor,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppLocalizations.of(context).display,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.08),
                  ),
                ),
              ),
              RadioButtonGroup(
                  activeColor: kMainColor,
                  labelStyle: Theme.of(context).textTheme.caption,
                  onSelected: (selectedThemes) {
                    if (selectedThemes == 'Dark Mode') {
                      selectedTheme = 'Dark Mode';
                    } else if (selectedThemes == 'Light Mode') {
                      selectedTheme = 'Light Mode';
                    }
                  },
                  labels: themes.map((e) => e.title).toList(),
                  itemBuilder: (Radio radioButton, Text title, int i) {
                    return Column(
                      children: <Widget>[
                        Container(
                          height: 65.0,
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: ListTile(
                              trailing: radioButton,
                              title: Text(
                                themes[i].title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                        fontSize: 18.3,
                                        color: Theme.of(context)
                                            .secondaryHeaderColor),
                              ),
                              subtitle: Text(
                                themes[i].subtitle,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: Theme.of(context)
                                            .secondaryHeaderColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0)
                      ],
                    );
                  }),
              Container(
                height: 58.0,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppLocalizations.of(context).selectLanguage,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.08),
                  ),
                ),
              ),
              RadioButtonGroup(
                activeColor: kMainColor,
                labelStyle: Theme.of(context).textTheme.caption,
                onSelected: (selectedLocale) {
                  setState(() {
                    selectedLocal = selectedLocale;
                  });
                },
                labels: language.map((e) => e.title).toList(),
                itemBuilder: (Radio radioButton, Text title, int i) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 56.7,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ListTile(
                            trailing: radioButton,
                            title: Text(
                              language[i].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                      fontSize: 18.3,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0)
                    ],
                  );
                },
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBar(
                text: AppLocalizations.of(context).continueText,
                onTap: () {
                  if (selectedLocal == 'English') {
                    _languageCubit.selectEngLanguage();
                  } else if (selectedLocal == 'Arabic') {
                    _languageCubit.selectArabicLanguage();
                  } else if (selectedLocal == 'Portuguese') {
                    _languageCubit.selectPortugueseLanguage();
                  } else if (selectedLocal == 'French') {
                    _languageCubit.selectFrenchLanguage();
                  } else if (selectedLocal == 'Spanish') {
                    _languageCubit.selectSpanishLanguage();
                  } else if (selectedLocal == 'Indonesian') {
                    _languageCubit.selectIndonesianLanguage();
                  }

                  if (selectedTheme == 'Dark Mode') {
                    _themeCubit.selectDarkTheme();
                  } else {
                    _themeCubit.selectLightTheme();
                  }

                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }
}
