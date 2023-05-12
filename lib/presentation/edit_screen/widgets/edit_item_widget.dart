import 'package:faizan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditItemWidget extends StatelessWidget {
  EditItemWidget();

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
                    color: ColorConstant.black900,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgWrite1,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            alignment: Alignment.topRight,
            margin: getMargin(
              top: 3,
              right: 20,
            ),
          ),
        ],
      ),
    );
  }
}
