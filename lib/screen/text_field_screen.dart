

import 'package:customtextfield/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: CustomTextFieldWidget(
      height: 20,
      width: 300,
      borderColor: Colors.black,
      ),
    ),);
  }
}