import 'package:faizan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 19,
            right: 19,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  56,
                ),
                width: getHorizontalSize(
                  375,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 71,
                ),
                child: Text(
                  "OTP Authentication",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtDMSansBold24,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  254,
                ),
                margin: getMargin(
                  left: 19,
                  top: 7,
                ),
                child: Text(
                  "An authentication code has been sent to \n***********@gmail.com",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtDMSansMedium14,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 36,
                  top: 18,
                  right: 35,
                ),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.number,
                  autoDismissKeyboard: true,
                  enableActiveFill: true,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onChanged: (value) {},
                  textStyle: TextStyle(
                    color: ColorConstant.gray90001,
                    fontSize: getFontSize(
                      24,
                    ),
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                  pinTheme: PinTheme(
                    fieldWidth: getHorizontalSize(
                      65,
                    ),
                    shape: PinCodeFieldShape.underline,
                    selectedFillColor: ColorConstant.gray5006c,
                    activeFillColor: ColorConstant.gray5006c,
                    inactiveFillColor: ColorConstant.gray5006c,
                    inactiveColor: ColorConstant.fromHex("#1212121D"),
                    selectedColor: ColorConstant.fromHex("#1212121D"),
                    activeColor: ColorConstant.fromHex("#1212121D"),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: getMargin(
                    left: 36,
                    top: 70,
                    right: 35,
                    bottom: 5,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 10,
                    right: 16,
                    bottom: 10,
                  ),
                  decoration: AppDecoration.fillLime600.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 103,
                          top: 3,
                          bottom: 4,
                        ),
                        child: Text(
                          "Continue".toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtDMSansBold12.copyWith(
                            letterSpacing: getHorizontalSize(
                              1.0,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(
                          left: 78,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
