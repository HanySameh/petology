import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petology/view/widgets/auth_components/auth_buttons.dart';
import 'package:petology/view/widgets/auth_components/or_divider.dart';
import 'package:petology/view/widgets/auth_components/submit_button.dart';
import 'package:petology/view/widgets/footer.dart';
import 'package:petology/view/widgets/input_field.dart';
import 'package:petology/view/widgets/outlined_container.dart';

import '../../utilities/colors.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 160.0),
                child: OutlinedContanier(
                  child: Column(
                    children: [
                      Text(
                        'LogIn',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      InputField(
                        controller: emailController,
                        textInputType: TextInputType.emailAddress,
                        hint: 'Email',
                      ),
                      InputField(
                        controller: passwordController,
                        textInputType: TextInputType.visiblePassword,
                        hint: 'password',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SubmitButton(
                        title: 'LogIn',
                        onTap: () {},
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'forget password?',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: OrDivider(),
                      ),
                      const AuthButtons(),
                      const SizedBox(height: 12.0),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            TextSpan(
                              text: 'Sign Up',
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
              ),
              Positioned(
                top: 18.0,
                child: SvgPicture.asset(
                  'assets/images/Dog-paw-cuate-3.svg',
                  height: 200.0,
                  width: 200.0,
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
