import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quality_service_delivery/constant/const.dart';
import 'package:quality_service_delivery/constant/widgets/buttons.dart';
import 'package:quality_service_delivery/constant/widgets/textfield.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_service_delivery/view/pages/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHidden = true;
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        title: customText('Sign In', black, 18),
        backgroundColor: white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText('Welcome back', black, 18,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 15,
              ),
              textField('E-mail', TextInputType.emailAddress, (value) {}),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordcontroller,
                autofocus: false,
                obscureText: isHidden,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Valid password ";
                  } else if (value.trim().isEmpty) {
                    return "Enter Valid password";
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      child: Icon(
                          isHidden ? Icons.visibility_off : Icons.visibility)),
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              button(() {
                Get.to(() => Dashboard());
              }, 'Sign In', mainColor, white),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: InkWell(
                      onTap: () {},
                      child:
                          customUnderlineText('Forgot Password?', grey, 16))),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Divider(),
                  customText('OR', grey, 16),
                  Divider(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              textIconButton(
                  icon: Icons.phone,
                  onTap: () {},
                  text: 'Sign In with Phone No.',
                  btnColor: textColor,
                  textColor: white),
              SizedBox(
                height: 15,
              ),
              svgButton(
                  img: fb,
                  onTap: () {},
                  text: 'Sign In with Facebook',
                  btnColor: fbBtn,
                  textColor: white,
                  borderColor: white),
              SizedBox(
                height: 15,
              ),
              svgButton(
                  img: google,
                  onTap: () {},
                  text: 'Sign In with Google',
                  btnColor: white,
                  textColor: black,
                  borderColor: black),
              SizedBox(
                height: 0.15.sh,
              ),
              Center(child: customRichText('Not a member? ', 'Join Now', '')),
              SizedBox(
                height: 0.1.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
