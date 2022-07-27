import 'package:flutter/material.dart';

import '../../utilities/colors.dart';

class OutlinedContanier extends StatelessWidget {
  const OutlinedContanier({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      margin: const EdgeInsets.all(50.0),
      width: 400.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 2,
          color: AppColors.darkBrown,
        ),
      ),
      child: child,
    );
  }
}
