import 'package:alashira/common_widgets/app_logo_widget.dart';
import 'package:alashira/common_widgets/custom_elevated_button.dart';
import 'package:alashira/common_widgets/custom_text_field.dart';
import 'package:alashira/layout/home_layout/home_layout.dart';
import 'package:alashira/screens/auth_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        alignment: Alignment.center,
        width: context.screenWidth,
        height: context.screenHeight,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppLogoWidget(),
              (context.screenHeight / 40).heightBox,
              Form(
                key: formKey,
                child: Column(
                  children: [
                    // login text

                    'تسجيل الدخول'.text.bold.size(20).make(),

                    (context.screenHeight / 50).heightBox,

                    //email

                    CustomTextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'البريد الإلكتروني',
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'لا تترك الحقل فارغا';
                        }
                        return null;
                      },
                    ),

                    (context.screenHeight / 60).heightBox,

                    //password

                    CustomTextField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      labelText: 'كلمة السر',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'لا تترك الحقل فارغا';
                        }
                        return null;
                      },
                      obscureText: isPassword,
                      suffixIcon:
                          isPassword ? Icons.visibility : Icons.visibility_off,
                      suffixPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                    ),

                    (context.screenHeight / 60).heightBox,

                    //login button

                    CustomElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Get.offAll(() => const HomeLayout());
                        }
                      },
                      child: 'تسجيل الدخول'.text.make(),
                    ),

                    (context.screenHeight / 100).heightBox,

                    //forget password

                    TextButton(
                      onPressed: () {},
                      child: 'هل نسيت كلمة السر ؟'.text.size(15).make(),
                    ),

                    (context.screenHeight / 100).heightBox,

                    // create new account

                    OutlinedButton(
                      onPressed: () => Get.to(() => const SignUpScreen()),
                      child: 'إنشاء حساب جديد'.text.make(),
                    ),
                  ],
                )
                    .box
                    .white
                    .p16
                    .rounded
                    .width(context.screenWidth - 50)
                    .shadowSm
                    .make(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
