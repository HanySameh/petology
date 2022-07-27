import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class PetBox extends StatelessWidget {
  const PetBox({Key? key, required this.isCat}) : super(key: key);
  final bool isCat;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      width: 105.0,
      height: 105.0,
      decoration: BoxDecoration(
        color: isCat == true
            ? AppColors.lightBrown
            : AppColors.lightGrey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: 2,
          color: AppColors.darkBrown,
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            isCat == true ? 'assets/icons/cat.png' : 'assets/icons/dog.png',
            width: 40.0,
            height: 40.0,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            isCat == true ? 'Cat' : 'Dog',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.darkBrown,
                ),
          ),
        ],
      ),
    );
  }
}
