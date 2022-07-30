import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.backColor,
      this.textColor})
      : super(key: key);
  final String title;
  final VoidCallback onTap;
  final Color? backColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 40),
          side: BorderSide.none,
          primary: backColor ?? AppColors.brown,
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: textColor ?? AppColors.lightBrown,
              ),
        ),
      ),
    );
  }
}
