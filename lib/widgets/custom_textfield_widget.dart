
import 'package:customtextfield/component/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  String? hintText;
  Color? hintTextColor;
  Color? boxColor;
  Color borderColor;
  Widget? myIcon;
  BorderRadius? borderRadius;
  double height;
  double width;
  double? iconHeightScale;
  double? iconWidthtScale;
  double? padding;
  CustomTextFieldWidget({Key? key, 
    this.padding,
    this.iconHeightScale,
    this.iconWidthtScale,
    this.myIcon,
    this.boxColor,
    required this.borderColor,
    this.borderRadius,
    this.hintText,
    this.hintTextColor,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        style: selectedTextFieldTextStyle,
        decoration: InputDecoration(
          fillColor: boxColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: hintTextColor),
          prefixIcon: iconHeightScale != null || iconWidthtScale != null
              ? Transform.scale(
                  scaleX: iconWidthtScale,
                  scaleY: iconHeightScale,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: padding ?? 0, right: padding ?? 0),
                    child: myIcon,
                  ),
                )
              : myIcon,
          enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.zero,
              borderSide: BorderSide(color: borderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.zero,
              borderSide: BorderSide(color: borderColor)),
          border: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.zero,
              borderSide: BorderSide(color: borderColor)),
        ),
      ),
    );
  }
}
