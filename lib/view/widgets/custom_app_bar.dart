import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology/view/widgets/custom_button.dart';
import '../../utilities/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.controller}) : super(key: key);
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            children: [
              CustomButton(
                lable: 'About us',
                onTap: () {
                  controller.jumpToPage(0);
                },
                isOutlined: false,
              ),
              CustomButton(
                lable: 'Categores',
                onTap: () {},
                isOutlined: false,
              ),
              CustomButton(
                lable: 'Services',
                onTap: () {},
                isOutlined: false,
              ),
              CustomButton(
                lable: 'Request',
                onTap: () {},
                isOutlined: false,
              ),
              const SizedBox(
                width: 30.0,
              ),
              CustomButton(
                lable: 'Sign Up',
                onTap: () {
                  controller.jumpToPage(2);
                },
                isOutlined: false,
                backgroundColor: AppColors.lightGrey,
                textColor: AppColors.darkBrown,
              ),
              const SizedBox(
                width: 10.0,
              ),
              CustomButton(
                lable: 'LogIn',
                onTap: () {
                  controller.jumpToPage(1);
                },
                isOutlined: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
