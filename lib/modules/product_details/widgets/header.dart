import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/routes.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool hoveredHome = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text.rich(
        TextSpan(
            text: 'Home',
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.pushNamed(context, Routes.initialRoute),
            onEnter: (event) {
              setState(() {
                hoveredHome = true;
              });
            },
            onExit: (event) {
              setState(() {
                hoveredHome = false;
              });
            },
            children: [
              TextSpan(
                  text: '  /  ',
                  style:
                      TextStyle(color: context.colors.outline, fontSize: 20.r)),
              TextSpan(
                  text: 'Shop',
                  style:
                      TextStyle(color: context.colors.outline, fontSize: 20.r)),
              TextSpan(
                  text: '  /  ',
                  style:
                      TextStyle(color: context.colors.outline, fontSize: 20.r)),
              TextSpan(
                  text: 'Hoddie',
                  style:
                      TextStyle(color: context.colors.shadow, fontSize: 20.r))
            ],
            style: TextStyle(
                color: hoveredHome
                    ? context.colors.primaryContainer
                    : context.colors.outline,
                fontSize: 20.r)),
      ),
    );
  }
}
