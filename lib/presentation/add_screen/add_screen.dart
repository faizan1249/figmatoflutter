import '../add_screen/widgets/add_item_widget.dart';
import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:faizan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faizan_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            82,
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
              top: 28,
              bottom: 25,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Add Information",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 14,
            right: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  left: 16,
                  right: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium24,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlus1,
                      height: getSize(
                        27,
                      ),
                      width: getSize(
                        27,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray60001,
                  indent: getHorizontalSize(
                    16,
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  45,
                ),
                width: getHorizontalSize(
                  370,
                ),
                margin: getMargin(
                  top: 38,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Designation",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium24,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 14,
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
                    CustomImageView(
                      imagePath: ImageConstant.imgPlus1,
                      height: getSize(
                        27,
                      ),
                      width: getSize(
                        27,
                      ),
                      alignment: Alignment.topRight,
                      margin: getMargin(
                        top: 1,
                        right: 4,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 37,
                  right: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Picture",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium24,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlus1,
                      height: getSize(
                        27,
                      ),
                      width: getSize(
                        27,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray60001,
                  indent: getHorizontalSize(
                    16,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 38,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        35,
                      ),
                    );
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return AddItemWidget();
                  },
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  58,
                ),
                text: "ADD",
                margin: getMargin(
                  left: 19,
                  top: 118,
                  right: 4,
                  bottom: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
