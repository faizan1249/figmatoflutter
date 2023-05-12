import '../edit_screen/widgets/edit_item_widget.dart';
import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:faizan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
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
            text: "Edit Information",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 14,
            top: 84,
            right: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 16,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Id",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium24,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgWrite1,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 5,
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
                  color: ColorConstant.black900,
                  indent: getHorizontalSize(
                    16,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 36,
                  right: 20,
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
                      imagePath: ImageConstant.imgWrite1,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 5,
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
                  color: ColorConstant.black900,
                  indent: getHorizontalSize(
                    16,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 39,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        38,
                      ),
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return EditItemWidget();
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 33,
                  right: 20,
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
                      imagePath: ImageConstant.imgWrite1,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 5,
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
                  color: ColorConstant.black900,
                  indent: getHorizontalSize(
                    16,
                  ),
                ),
              ),
              Container(
                height: getSize(
                  62,
                ),
                width: getSize(
                  62,
                ),
                margin: getMargin(
                  top: 133,
                  bottom: 5,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: getPadding(
                          right: 1,
                        ),
                        child: Text(
                          "ADD",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium20,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.blueA200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder30,
                        ),
                        child: Container(
                          height: getSize(
                            62,
                          ),
                          width: getSize(
                            62,
                          ),
                          decoration: AppDecoration.fillBlueA200.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder30,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgPlus,
                                height: getSize(
                                  60,
                                ),
                                width: getSize(
                                  60,
                                ),
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
