

import 'package:customtextfield/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 

    SafeArea(
    child: Scaffold(
   body: Center(
     child: Container(
      child: CustomTextFieldWidget(height: 10,
      spreadRadius: 10,
      blurRadius:50,
     shadowColor: const Color.fromARGB(255, 210, 53, 53).withOpacity(0.5),
      width: 150,
       borderColor: Colors.black,
      ),
     ),
   ),
    ));
  }
}