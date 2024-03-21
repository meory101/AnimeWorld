import 'package:flutter/material.dart';
import 'package:goaltracker/theme/colors.dart';


class TextForm extends StatelessWidget {
  final String hint;
  final int maxlines;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputType keytype;
  final bool? obscure;
  final TextEditingController? controller;
  final bool? readonly;
  const TextForm(
      {super.key,
      required this.hint,
      required this.maxlines,
      this.suffix,
      this.prefix,
      required this.keytype,
      this.obscure,
      this.readonly,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        readOnly: readonly != null ? readonly! : false,
        obscureText: obscure == null ? false : obscure!,
        controller: controller,
        keyboardType: keytype,
        cursorColor: AppColor.maincolor,
        maxLines: maxlines,
        decoration: InputDecoration(

          hintText: hint,
          hintMaxLines: 1,
          prefixIcon: prefix ?? prefix,
          suffixIcon: suffix ?? suffix,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
