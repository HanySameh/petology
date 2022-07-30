import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class CareItem extends StatelessWidget {
  const CareItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.0,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: CircleAvatar(
              backgroundColor: AppColors.brown,
              radius: 50.0,
            ),
          ),
          Column(
            children: [
              Image.asset(
                'assets/icons/bed.png',
                height: 80.0,
                width: 80.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                'Milk',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: AppColors.white,
                    ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
