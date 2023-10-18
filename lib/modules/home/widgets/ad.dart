import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdWidget extends StatelessWidget {
  const AdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 73.r),
      width: double.infinity,
      height: 550.r,
      child: InkWell(
        onTap: () {},
        child: Image.asset(
          'assets/Ad.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
