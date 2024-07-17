// ignore_for_file: depend_on_referenced_packages

import 'package:alashira/common_widgets/app_logo_widget.dart';
import 'package:alashira/common_widgets/custom_elevated_button.dart';
import 'package:alashira/common_widgets/custom_text_field.dart';
import 'package:alashira/layout/home_layout/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var repeatPasswordController = TextEditingController();

  var isPassword = true;

  var birthdateController = TextEditingController();

  List<String> gender = ['ذكر', 'أنثى'];

  String? selectedItem = 'النوع';

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
                    // create account text

                    'إنشاء حساب'.text.bold.size(20).make(),

                    (context.screenHeight / 50).heightBox,

                    //name

                    CustomTextField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      labelText: 'اسم المستخدم',
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'لا تترك الحقل فارغا';
                        }
                        return null;
                      },
                    ),

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

                    (context.screenHeight / 50).heightBox,

                    //birth date & gender

                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CustomTextField(
                            controller: birthdateController,
                            keyboardType: TextInputType.none,
                            labelText: 'تاريخ الميلاد',
                            obscureText: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'لا تترك الحقل فارغا';
                              }
                              return null;
                            },
                            onTap: () async {
                              DateTime? pickDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime.now(),
                              );
                              if (pickDate != null) {
                                setState(() {});
                                await initializeDateFormatting("ar_SA", null);
                                birthdateController.text =
                                    DateFormat.yMMMd('ar_SA').format(pickDate);
                              }
                            },
                          ),
                        ),

                        (context.screenWidth / 50).widthBox,

                        // male or female

                        Expanded(
                          child: DropdownButtonFormField(
                            onTap: () =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'لا تترك الحقل فارغا';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: selectedItem,
                            ),
                            items: gender
                                .map(
                                  (item) => DropdownMenuItem(
                                    value: item,
                                    child: item.text.make(),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) => setState(() {}),
                          ),
                        ),
                      ],
                    ),

                    (context.screenHeight / 50).heightBox,

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

                    (context.screenHeight / 50).heightBox,

                    //repeat password

                    CustomTextField(
                      controller: repeatPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      labelText: 'كلمة السر مرة أخرى',
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

                    (context.screenHeight / 50).heightBox,

                    //create account button

                    CustomElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          Get.offAll(() => const HomeLayout());
                        }
                      },
                      child: 'إنشاء حساب'.text.make(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  'إذا كان لديك حساب قم بـ'.text.make(),
                  TextButton(
                    onPressed: () => Get.back(),
                    child: 'تسجيل الدخول'.text.red500.make(),
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
