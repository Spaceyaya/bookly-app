import 'package:bookly/features/search/presentaion/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchViews extends StatelessWidget {
  const SearchViews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
