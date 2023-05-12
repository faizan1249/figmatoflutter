import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:faizan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotMatchedScreen extends StatelessWidget {
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
            top: 126,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRemove1,
                height: getSize(
                  142,
                ),
                width: getSize(
                  142,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 32,
                  bottom: 5,
                ),
                child: Text(
                  "Not Matched",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
