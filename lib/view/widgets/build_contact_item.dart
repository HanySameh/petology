import 'package:flutter/material.dart';

import '../../utilities/colors.dart';

class BuildContactItem extends StatelessWidget {
  const BuildContactItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: Opacity(
                      opacity: 0.4,
                      child: Image.asset('assets/images/right-light-leg.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'For any questions',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: AppColors.lightBrown,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/icons/email.png'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'hanysameh@gmail.com',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: AppColors.lightGrey,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/icons/phone.png'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '01028941647',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: AppColors.lightGrey,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 40.0,
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset('assets/images/right-light-leg.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'We are waiting you',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: AppColors.lightBrown,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/icons/location-on.png'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Mansoura',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: AppColors.lightGrey,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/icons/location-on.png'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Cairo',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: AppColors.lightGrey,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
