import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wssalapp/Auth/login_navigator.dart';
import 'package:wssalapp/Components/entry_field.dart';
import 'package:wssalapp/Locale/locales.dart';

class MobileInput extends StatefulWidget {
  @override
  _MobileInputState createState() => _MobileInputState();
}

class _MobileInputState extends State<MobileInput> {
  final TextEditingController _controller = TextEditingController();
  String isoCode;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CountryCodePicker(
          onChanged: (value) {
            isoCode = value.code;
          },
          builder: (value) => buildButton(value),
          initialSelection: '+2',
          textStyle: Theme.of(context).textTheme.caption,
          showFlag: false,
          showFlagDialog: true,
          favorite: ['+2', 'US'],
        ),
        SizedBox(
          width: 10.0,
        ),
        //takes phone number as input
        Expanded(
          child: EntryField(
            controller: _controller,
            keyboardType: TextInputType.number,
            readOnly: false,
            hint: AppLocalizations.of(context).mobileText,
            maxLength: 10,
            border: InputBorder.none,
          ),
        ),

        //if phone number is valid, button gets enabled and takes to register screen
        RaisedButton(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 8.0),
            child: Text(
              AppLocalizations.of(context).continueText,
              style: Theme.of(context).textTheme.button,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          onPressed: () {
            Navigator.pushNamed(context, LoginRoutes.signUp);
          },
        ),
      ],
    );
  }

  buildButton(CountryCode isoCode) {
    return Row(
      children: <Widget>[
        Text(
          '$isoCode',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
