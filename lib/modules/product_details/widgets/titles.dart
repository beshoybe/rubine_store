import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '2pac Hoddie',
          style: TextStyle(
              fontSize: 45.r,
              color: context.colors.shadow,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 10.r,
        ),
        Text(
          'New printed hoddie with amazing style',
          style: TextStyle(
              fontSize: 23.r,
              color: context.colors.shadow,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 20.r,
        ),
        Text(
          '500 EGP',
          style: TextStyle(
              fontSize: 36.r,
              color: Color(0xffD45C64),
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
