import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import 'build_contact_item.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.brown,
            AppColors.darkBrown,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const BuildContactItem(),
          Image.asset('assets/images/foder.png'),
        ],
      ),
    );
  }
}
