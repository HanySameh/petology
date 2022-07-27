import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class AboutBetology extends StatelessWidget {
  const AboutBetology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 400.0,
          height: 400.0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 220.0,
                right: 60.0,
                child: Container(
                  width: 320.0,
                  height: 150.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.lightGrey,
                        blurRadius: 10.0,
                        blurStyle: BlurStyle.normal,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/images/cat-nextto-dog.png',
                height: 300.0,
                width: 300.0,
              ),
              Image.asset(
                'assets/images/dog-nextto-cat.png',
                height: 450.0,
                width: 450.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 200.0,
        ),
        SizedBox(
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Petology',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: AppColors.lightGrey,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
