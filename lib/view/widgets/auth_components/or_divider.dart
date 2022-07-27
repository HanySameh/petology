import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 120.0,
          height: 1,
          color: AppColors.black,
        ),
        const SizedBox(
          width: 8.0,
        ),
        const Text('or'),
        const SizedBox(
          width: 8.0,
        ),
        Container(
          width: 120.0,
          height: 1,
          color: AppColors.black,
        ),
      ],
    );
  }
}
