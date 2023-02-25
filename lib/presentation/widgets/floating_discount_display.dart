import 'package:flutter/material.dart';
import 'package:royex_task/core/constants/colors.dart';

class FloatingDiscountDisplay extends StatelessWidget {
  const FloatingDiscountDisplay({
    Key? key,
    required this.isSmall,
  }) : super(key: key);

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSmall ? 25 : 50,
      height: isSmall ? 25 : 50,
      decoration: BoxDecoration(
        border: Border.all(color: kWhiteColor),
        borderRadius: BorderRadius.circular(50),
        color: kRedColor,
      ),
      child: Center(
        child: Text(
          'Off\n7%',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: kWhiteColor,
            fontSize: isSmall ? 7 : 14,
          ),
        ),
      ),
    );
  }
}
