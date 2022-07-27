import 'package:flutter/material.dart';
import 'package:petology/utilities/colors.dart';
import 'package:petology/view/widgets/auth_components/auth_buttons.dart';
import 'package:petology/view/widgets/auth_components/or_divider.dart';
import 'package:petology/view/widgets/auth_components/submit_button.dart';
import 'package:petology/view/widgets/footer.dart';
import 'package:petology/view/widgets/input_field.dart';
import 'package:petology/view/widgets/outlined_container.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController fristNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Positioned(
                top: 250.0,
                child: Image.asset(
                  'assets/images/left-darkleg.png',
                  color: AppColors.lightBrown.withOpacity(0.7),
                ),
              ),
              Positioned(
                top: 330.0,
                left: 370.0,
                child: Image.asset(
                  'assets/images/left-darkleg.png',
                  color: AppColors.lightBrown.withOpacity(0.7),
                ),
              ),
              OutlinedContanier(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const AuthButtons(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: OrDivider(),
                    ),
                    InputField(
                      controller: fristNameController,
                      hint: 'frist name',
                    ),
                    InputField(
                      controller: lastNameController,
                      hint: 'last name',
                    ),
                    InputField(
                      controller: emailController,
                      hint: 'Email',
                    ),
                    InputField(
                      controller: passwordController,
                      hint: 'password',
                    ),
                    InputField(
                      controller: emailController,
                      hint: 'Country',
                      widget: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    SubmitButton(
                      title: 'Sign Up',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          TextSpan(
                            text: 'LogIn',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: AppColors.black,
                                    ),
                            onEnter: (_) {
                              debugPrint('done');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 25.0,
                right: 400.0,
                child: Image.asset(
                  'assets/images/right-darkleg.png',
                  width: 60.0,
                  height: 60.0,
                ),
              ),
              Positioned(
                bottom: 30.0,
                left: 400.0,
                child: Image.asset(
                  'assets/images/left-darkleg.png',
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
          const Footer(),
        ],
      ),
    );
  }
}
