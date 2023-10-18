import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onHover: null,
        style: FilledButton.styleFrom(
            foregroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.white,
            backgroundColor: Colors.white),
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(
              'assets/cart.png',
              width: 27.r,
              height: 27.r,
            ),
            SizedBox(
              width: 13.r,
            ),
            Text(
              "Cart",
              style: TextStyle(
                  color: context.colors.primary,
                  fontSize: 22.r,
                  fontWeight: FontWeight.w700),
            )
          ],
        ));
  }
}
