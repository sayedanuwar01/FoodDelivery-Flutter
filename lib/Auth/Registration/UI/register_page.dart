
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:wssalapp/Auth/login_navigator.dart';
import 'package:wssalapp/Components/bottom_bar.dart';
import 'package:wssalapp/Components/entry_field.dart';
import 'package:wssalapp/Locale/locales.dart';


//register page for registration of a new user
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
         AppLocalizations.of(context).register,
          style: Theme.of(context).textTheme.caption.copyWith(fontSize: 16.7),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  // RegisterBloc _registerBloc;

  @override
  void initState() {
    super.initState();
    // _registerBloc = BlocProvider.of<RegisterBloc>(context);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: <Widget>[
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              //name textField
              EntryField(
                textCapitalization: TextCapitalization.words,
               // controller: _nameController,
                label: AppLocalizations.of(context).fullName.toUpperCase(),
                image: 'images/icons/ic_name.png',
                initialValue: 'Samantha Smith',
              ),
              //email textField
              EntryField(
                textCapitalization: TextCapitalization.none,
                //controller: _emailController,
                label: AppLocalizations.of(context).emailAddress.toUpperCase(),
                image: 'images/icons/ic_mail.png',
                keyboardType: TextInputType.emailAddress,
                initialValue: 'samanthasmith@mail.com',
              ),

              //phone textField
              EntryField(
                label: AppLocalizations.of(context).mobileNumber.toUpperCase(),
                image: 'images/icons/ic_phone.png',
                keyboardType: TextInputType.number,
                initialValue: '+1 987 654 3210',
              ),

              Padding(
                padding: const EdgeInsets.only(left:16.0),
                child: Text(
                  AppLocalizations.of(context).verificationText,
                  style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 12.8),
                ),
              ),
            ],
          ),
        ),

        //continue button bar
        BottomBar(
            text: AppLocalizations.of(context).continueText,
            onTap: () {
              Navigator.pushNamed(context, LoginRoutes.verification);
            })
      ],
    );
  }
}
