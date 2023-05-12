import 'package:faizan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddOneItemWidget extends StatelessWidget {
  AddOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        45,
      ),
      width: getHorizontalSize(
        370,
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
                  "",
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
              right: 4,
            ),
          ),
        ],
      ),
    );
  }
}
