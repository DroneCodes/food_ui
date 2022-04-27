import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  final Widget child;

  SearchContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white),
      height: 50,

      child: child,
    );
  }
}