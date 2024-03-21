import 'package:flutter/material.dart';
import 'package:goaltracker/theme/colors.dart';
import 'package:goaltracker/theme/fonts.dart';


class RecButton extends StatelessWidget {
  final String buttontext;
  final void Function()? onTap;
  final double width;
  final double height;
  final Color? color;
  final TextStyle? style;

  RecButton({
    required this.buttontext,
    required this.onTap,
    required this.width,
    required this.height,
    this.color,
    this.style,
  });
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color != null ? color : AppColor.maincolor),
        child: Text(
          '${buttontext}',
          style:style!=null?style: AppFonts.subfont,
          maxLines: 1,
        ),
      ),
    );
  }
}
