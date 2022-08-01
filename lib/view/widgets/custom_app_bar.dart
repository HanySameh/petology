import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology/view/widgets/custom_button.dart';
import '../../utilities/colors.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key, required this.controller}) : super(key: key);
  final PageController controller;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  //bool _isHover = false;
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
                  widget.controller.jumpToPage(0);
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
                onTap: () {
                  widget.controller.jumpToPage(1);
                },
                isOutlined: false,
              ),
              const SizedBox(
                width: 30.0,
              ),
              CustomButton(
                lable: 'Sign Up',
                onTap: () {
                  widget.controller.jumpToPage(3);
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
                  widget.controller.jumpToPage(2);
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
