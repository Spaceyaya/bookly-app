import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInPutBorder(),
        focusedBorder: buildOutlineInPutBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .5,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInPutBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
