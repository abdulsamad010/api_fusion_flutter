import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  String label;
  TextInputType type;
  Icon icon;
  Color iconColor;
  TextEditingController con;
  String? Function(String?)? val;
  CustomTextField({super.key,required this.type,required this.label,required this.icon,required this.iconColor,required this.con,required this.val});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      decoration: InputDecoration(
        label: Text("$label"),
        border: OutlineInputBorder(),
        icon: icon,
        iconColor: iconColor
      ),
      controller: con,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: val,
    );
  }
}
