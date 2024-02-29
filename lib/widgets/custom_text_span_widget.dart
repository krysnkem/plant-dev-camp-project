import 'package:flutter/material.dart';
import 'package:plant_project/app_colors.dart';

class CustomTextSpanWidget extends StatelessWidget {
  const CustomTextSpanWidget({
    super.key,
    required this.keyStr,
    required this.valueStr,
  });
  final String keyStr;
  final String valueStr;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$key: ',
        children: [
          TextSpan(
            text: keyStr,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: whiteWithOpacity,
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14,
              color: whiteWithOpacity,
            ),
      ),
    );
  }
}
