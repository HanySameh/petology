import 'package:flutter/material.dart';
import 'package:petology/view/pages/about_us_page.dart';
import 'package:petology/view/pages/login_page.dart';
import 'package:petology/view/pages/register_page.dart';
import 'package:petology/view/pages/request_page.dart';

import '../widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: CustomAppBar(controller: pageController),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: const [
                AboutUsPage(),
                RequestPage(),
                LogInPage(),
                RegisterPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
