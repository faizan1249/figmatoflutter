import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:faizan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faizan_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PersonalProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            38,
          ),
          leadingWidth: 41,
          leading: AppbarImage(
            height: getVerticalSize(
              2,
            ),
            width: getHorizontalSize(
              22,
            ),
            svgPath: ImageConstant.imgArrow5,
            margin: getMargin(
              left: 19,
              top: 20,
              bottom: 16,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Profile",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 25,
            top: 54,
            right: 25,
            bottom: 54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  217,
                ),
                width: getHorizontalSize(
                  233,
                ),
                margin: getMargin(
                  right: 49,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUser13,
                      height: getSize(
                        217,
                      ),
                      width: getSize(
                        217,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img05ed272c4505168,
                      height: getVerticalSize(
                        61,
                      ),
                      width: getHorizontalSize(
                        64,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          30,
                        ),
                      ),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                height: getVerticalSize(
                  58,
                ),
                text: "UPDATE",
                margin: getMargin(
                  right: 1,
                  bottom: 302,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
