import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology/view/widgets/auth_components/submit_button.dart';
import 'package:petology/view/widgets/custom_button.dart';
import 'package:petology/view/widgets/footer.dart';
import 'package:petology/view/widgets/input_field.dart';
import 'package:petology/view/widgets/outlined_container.dart';

import '../../utilities/colors.dart';

class HelpThemPage extends StatelessWidget {
  const HelpThemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
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
              SvgPicture.asset(
                'assets/logo/logo.svg',
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'About Us',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      height: 2.0,
                      width: 55.0,
                      color: AppColors.lightBrown,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CustomButton(
                    lable: 'Sign Up',
                    onTap: () {},
                    isOutlined: false,
                    backgroundColor: AppColors.lightGrey,
                    textColor: AppColors.darkBrown,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomButton(
                    lable: 'LogIn',
                    onTap: () {},
                    isOutlined: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  top: 2.0,
                  right: 350.0,
                  child: RotatedBox(
                    quarterTurns: 10,
                    child: Image.asset(
                      'assets/images/left-darkleg.png',
                      color: AppColors.lightBrown.withOpacity(0.3),
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 60.0,
                  left: 330.0,
                  child: Image.asset(
                    'assets/images/left-darkleg.png',
                    color: AppColors.lightBrown.withOpacity(0.6),
                    width: 170.0,
                    height: 170.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 270.0,
                  right: 330.0,
                  child: Image.asset(
                    'assets/images/left-darkleg.png',
                    color: AppColors.lightBrown.withOpacity(0.4),
                    width: 170.0,
                    height: 170.0,
                    fit: BoxFit.cover,
                  ),
                ),
                OutlinedContanier(
                  child: Column(
                    children: [
                      Text(
                        'Help your friend',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Image.asset(
                        'assets/icons/camera.png',
                        width: 100.0,
                        height: 100.0,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      InputField(
                        hint: 'Country',
                        widget: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'select your current location',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          InputField(
                            hint: 'Location',
                            widget: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.location_on),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          const InputField(
                            hint: 'phone number',
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          SubmitButton(
                            title: 'Send',
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          SubmitButton(
                            title: 'Call',
                            onTap: () {},
                            backColor: AppColors.lightBrown,
                            textColor: AppColors.darkBrown,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
