import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFieldWidget extends StatelessWidget {
  String? prefixText;
  String? labelText;
  String? hintText;
  Color? hintTextColor;
  Color? boxColor;
  Color shadowColor;
  Color borderColor;
  SvgPicture? myIcon;
  BorderRadius? borderRadius;
  double height;
  double? heightScale;
  double? widthtScale;
  double? padding;
  double? widthFactor;
  double? heightFactor;
  double width;
  double spreadRadius;
  double blurRadius;
  double? widthContent;

  CustomTextFieldWidget(
      {super.key,
      this.prefixText,
      this.padding,
      required this.spreadRadius,
      this.heightScale,
      required this.blurRadius,
      this.widthContent,
      this.widthFactor,
      this.widthtScale,
     required this.shadowColor,
      this.heightFactor,
      this.myIcon,
      this.boxColor,
      required this.borderColor,
      this.borderRadius,
      this.hintText,
      this.hintTextColor,
      required this.height,
      required this.width,
      this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // color: Colors.grey.withOpacity(0.5),
            color: shadowColor,
            spreadRadius: spreadRadius,
            blurRadius: blurRadius,
            // offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: SizedBox(
        width: width,
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: boxColor,
            filled: true,
            contentPadding: EdgeInsets.only(bottom: height, left: widthContent ?? 20),
            hintText: hintText,
            hintStyle: TextStyle(color: hintTextColor),
            suffixIcon: heightScale != null || widthtScale != null
                ? Transform.scale(
                    scaleX: widthtScale ?? 1,
                    scaleY: heightScale ?? 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: padding ?? 0, right: padding ?? 0),
                      child: myIcon,
                    ),
                  )
                : myIcon,
            labelText: labelText,
            prefixText: prefixText,
            enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.zero,
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.zero,
              borderSide: BorderSide(color: borderColor),
            ),
            border: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.zero,
              borderSide: BorderSide(color: borderColor),
            ),
          ),
        ),
      ),
    );
  }
}
