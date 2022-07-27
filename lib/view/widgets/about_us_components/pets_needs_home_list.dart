import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class PetsNeedsHomeList extends StatefulWidget {
  const PetsNeedsHomeList({Key? key}) : super(key: key);

  @override
  State<PetsNeedsHomeList> createState() => _PetsNeedsHomeListState();
}

class _PetsNeedsHomeListState extends State<PetsNeedsHomeList> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHover = false;
        });
      },
      child: Container(
        height: 400.0,
        width: 250.0,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            width: 2,
            color: AppColors.brown,
          ),
          color: AppColors.lightGrey.withOpacity(0.5),
          boxShadow: _isHover == true
              ? [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.3),
                    blurRadius: 10.0,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(5, 10),
                  ),
                ]
              : [],
        ),
        child: Column(
          children: [
            SizedBox(
              width: 300.0,
              height: 300.0,
              child: Image.asset(
                'assets/images/dog-nextto-cat.png',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Dogs',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColors.black,
                  ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'petology',
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: AppColors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
