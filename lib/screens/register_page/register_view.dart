import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/core/components/decorations.dart';
import 'package:vazifa/core/constant/constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';
import 'package:vazifa/core/widgets/big_button.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidht(16)),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(112),
                      bottom: getHeight(16),
                    ),
                    child: SvgPicture.asset(Constant.lafuiBlue),
                  ),
                  Text(
                    "Let’s Get Started",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(8),
                      bottom: getHeight(28),
                    ),
                    child: Text(
                      "Sign in to continue",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: MyDeco.decoInp(
                      hint: "Full Name",
                      icon: Constant.email,
                    ),
                    validator: (v) {},
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: getHeight(8)),
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: MyDeco.decoInp(
                        hint: "Your Email",
                        icon: Constant.email,
                      ),
                      validator: (v) {},
                    ),
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.bodyText1,
                    obscureText: true,
                    decoration: MyDeco.decoInp(
                      hint: "Password",
                      icon: Constant.lock,
                    ),
                    validator: (v) {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(8),
                      bottom: getHeight(16),
                    ),
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      obscureText: true,
                      decoration: MyDeco.decoInp(
                        hint: "Password Again",
                        icon: Constant.lock,
                      ),
                      validator: (v) {},
                    ),
                  ),
                  BigButton(
                    title: "Sign Up",
                    onTap: () {
                      Navigator.pushNamed(context, "/homeView");
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: getHeight(24)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "have a account? ",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          "Sign In",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
