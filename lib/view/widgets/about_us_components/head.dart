import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class AboutUsHead extends StatelessWidget {
  const AboutUsHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
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
        children: [
          SizedBox(
            width: 350.0,
            child: Column(
              children: [
                Text(
                  'Not only People need a house',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: AppColors.lightBrown,
                      ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: AppColors.lightGrey,
                      ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 500.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Help them',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: AppColors.darkBrown,
                                ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right,
                            color: AppColors.darkBrown,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/white-circle-background.png'),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 250.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 20.0,
                        offset: const Offset(3, 3),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 40.0,
                child: SizedBox(
                  height: 350.0,
                  width: 350.0,
                  child: Image.asset('assets/images/dog-on-circle.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
