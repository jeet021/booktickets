import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../utilis/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3,
        ),
        Gap(5),
        Text(
          secondText,
          style: Styles.headLineStyle3,
        ),
      ],
    );
  }
}
