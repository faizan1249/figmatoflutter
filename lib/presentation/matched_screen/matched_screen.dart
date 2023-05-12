import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:faizan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MatchedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            85,
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
              top: 25,
              bottom: 28,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Verify Signature",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 47,
            top: 44,
            right: 47,
            bottom: 44,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheck11,
                height: getSize(
                  142,
                ),
                width: getSize(
                  142,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 28,
                ),
                child: Text(
                  "Signature Matched",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold24,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGallery1,
                height: getVerticalSize(
                  225,
                ),
                width: getHorizontalSize(
                  229,
                ),
                margin: getMargin(
                  top: 48,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 51,
                  ),
                  child: Text(
                    "Name",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium24,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray60001,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 32,
                  ),
                  child: Text(
                    "Designation",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium24,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                  bottom: 5,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray60001,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
