import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/custom_button.dart';
import 'package:faizan_s_application1/widgets/custom_radio_button.dart';
import 'package:faizan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegPageScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String radioGroup = "";

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 16,
              top: 20,
              right: 16,
              bottom: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLetterelogowith,
                  height: getSize(
                    183,
                  ),
                  width: getSize(
                    183,
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: nameController,
                  hintText: "Name",
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: emailController,
                  hintText: "Email",
                  margin: getMargin(
                    top: 24,
                  ),
                  textInputType: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: passwordController,
                  hintText: "Password",
                  margin: getMargin(
                    top: 24,
                  ),
                  padding: TextFormFieldPadding.PaddingT20,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 22,
                      right: 12,
                      bottom: 23,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFolder,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      63,
                    ),
                  ),
                  isObscureText: true,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 2,
                      top: 24,
                      right: 62,
                    ),
                    child: CustomRadioButton(
                      text:
                          "l agree with the Terms of Service & Privacy Policy",
                      iconSize: getHorizontalSize(
                        15,
                      ),
                      value:
                          "l agree with the Terms of Service & Privacy Policy",
                      groupValue: radioGroup,
                      margin: getMargin(
                        left: 2,
                        top: 24,
                        right: 62,
                      ),
                      fontStyle: RadioFontStyle.SofiaSansRomanRegular14,
                      onChange: (value) {
                        radioGroup = value;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 21,
                    top: 57,
                    right: 21,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: getMargin(
                            right: 14,
                          ),
                          padding: getPadding(
                            left: 35,
                            top: 11,
                            right: 35,
                            bottom: 11,
                          ),
                          decoration: AppDecoration.outlineGray100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: getSize(
                                  22,
                                ),
                                width: getSize(
                                  22,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                  top: 2,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Google",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSofiaSansRomanBlack14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          height: getVerticalSize(
                            44,
                          ),
                          text: "Facebook",
                          margin: getMargin(
                            left: 14,
                          ),
                          variant: ButtonVariant.OutlineGray100,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingT13,
                          fontStyle: ButtonFontStyle.SofiaSansRomanBlack14,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 12,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.indigo600,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgFacebook,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    62,
                  ),
                  text: "Register Now",
                  margin: getMargin(
                    top: 59,
                  ),
                  variant: ButtonVariant.FillLightblue800,
                  shape: ButtonShape.RoundedBorder10,
                  padding: ButtonPadding.PaddingAll19,
                  fontStyle: ButtonFontStyle.SofiaSansRomanRegular20,
                ),
                Padding(
                  padding: getPadding(
                    top: 21,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 4,
                        ),
                        child: Text(
                          "Already have an accont? ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSofiaProRegular14,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Text(
                          "Log in",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSofiaProMedium14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
