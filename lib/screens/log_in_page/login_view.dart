import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vazifa/core/colors/colors_constant.dart';
import 'package:vazifa/core/components/decorations.dart';
import 'package:vazifa/core/constant/constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';
import 'package:vazifa/core/widgets/big_button.dart';
import 'package:vazifa/core/widgets/login_with.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(112),
                  bottom: getHeight(16),
                ),
                child: SvgPicture.asset(Constant.lafuiBlue),
              ),
              Text(
                "Welcome to Lafyuu",
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
              SizedBox(
                width: getWidht(343),
                height: getHeight(48),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText1,
                  decoration: MyDeco.decoInp(
                    hint: "Email",
                    icon: Constant.email,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(8),
                  bottom: getHeight(16),
                ),
                child: SizedBox(
                  width: getWidht(343),
                  height: getHeight(48),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: MyDeco.decoInp(
                      hint: "Password",
                      icon: Constant.lock,
                    ),
                  ),
                ),
              ),
              BigButton(
                title: "Sign In",
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getHeight(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: getWidht(134), child: const Divider()),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: ConstColor.neturalGrey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: getWidht(134), child: const Divider()),
                  ],
                ),
              ),
              LoginWith(
                title: "Login with Google",
                image: Constant.google,
              ),
              Padding(
                padding: EdgeInsets.only(top: getHeight(8)),
                child: LoginWith(
                  title: "Login with facebook",
                  image: Constant.facebook,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(16),
                  bottom: getHeight(8),
                ),
                child: InkWell(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: ConstColor.blue,
                      fontWeight: FontWeight.w700,
                      fontSize: getWidht(12),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have a account? ",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  InkWell(
                    child: Text(
                      "Register",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/registerView');
                    },
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
