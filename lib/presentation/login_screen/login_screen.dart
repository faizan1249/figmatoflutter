import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/custom_button.dart';
import 'package:faizan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

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
              top: 29,
              right: 16,
              bottom: 29,
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
                  controller: emailController,
                  hintText: "Email",
                  margin: getMargin(
                    top: 87,
                  ),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                ),
                Container(
                  margin: getMargin(
                    top: 24,
                  ),
                  padding: getPadding(
                    left: 12,
                    top: 13,
                    right: 12,
                    bottom: 13,
                  ),
                  decoration: AppDecoration.outlineBlue50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 14,
                          top: 7,
                          bottom: 7,
                        ),
                        child: Text(
                          "Password",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSofiaProRegular14Gray700,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgFolder,
                        height: getSize(
                          18,
                        ),
                        width: getSize(
                          18,
                        ),
                        margin: getMargin(
                          bottom: 19,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 21,
                    top: 90,
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
                  text: "Login",
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
                    top: 17,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do not have an account yet? ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSofiaSansRomanRegular14,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          "Register Now",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSofiaSansRomanRegular14Gray800,
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
