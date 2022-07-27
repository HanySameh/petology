import 'package:flutter/material.dart';

import 'package:petology/utilities/colors.dart';
import 'package:petology/view/widgets/about_us_components/about_petology.dart';
import 'package:petology/view/widgets/about_us_components/head.dart';
import 'package:petology/view/widgets/about_us_components/pet_box.dart';
import 'package:petology/view/widgets/about_us_components/pets_needs_home_list.dart';
import 'package:petology/view/widgets/auth_components/submit_button.dart';
import 'package:petology/view/widgets/footer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AboutUsHead(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: AboutBetology(),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(bottom: 20.0),
            width: double.infinity,
            color: AppColors.lightGrey.withOpacity(0.5),
            child: Column(
              children: [
                Text(
                  'Lets get this right .....',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: AppColors.black,
                      ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'what kind of friend you looking for?',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: AppColors.black,
                      ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    PetBox(isCat: true),
                    SizedBox(
                      width: 15.0,
                    ),
                    PetBox(isCat: false),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                  width: 250.0,
                  child: Text(
                    'Our friends who looking for a house',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: AppColors.black,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_circle_left,
                        color: AppColors.brown,
                        size: 40.0,
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 400.0,
                        child: ListView.separated(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              const PetsNeedsHomeList(),
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                            width: 20.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_circle_right,
                        color: AppColors.brown,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SubmitButton(
                  title: 'Explore',
                  onTap: () {},
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
