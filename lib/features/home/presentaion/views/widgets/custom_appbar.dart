import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assest.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssestData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/searchView');
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              )),
        ],
      ),
    );
  }
}
