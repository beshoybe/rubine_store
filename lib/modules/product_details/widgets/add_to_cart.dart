import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40.r),
              decoration: const ShapeDecoration(
                  color: Color(0xffEBEBEB),
                  shape: StadiumBorder(
                      side: BorderSide(
                    color: Color(0xffD3D3D3),
                  ))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 10.r),
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    color: context.colors.primary,
                    iconSize: 30.r,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 60.r, vertical: 20.r),
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: context.colors.primary,
                          fontSize: 30.r,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 20.r),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    color: context.colors.primary,
                    iconSize: 30.r,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.r,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30.r,
                ),
                Text.rich(
                  TextSpan(text: 'Only ', children: [
                    TextSpan(
                        text: '5 Peices ',
                        style: TextStyle(
                            fontSize: 20.r,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffDF970B))),
                    TextSpan(text: 'left in stock!')
                  ]),
                  maxLines: 1,
                  style: TextStyle(fontSize: 20.r, fontWeight: FontWeight.w500),
                ),
                Text("Don't miss it!",
                    maxLines: 1,
                    style:
                        TextStyle(fontSize: 20.r, fontWeight: FontWeight.w500))
              ],
            )
          ],
        ),
        SizedBox(
          height: 20.r,
        ),
        Row(
          children: [
            BuyButton(),
            SizedBox(
              width: 30.r,
            ),
            AddToCartButton()
          ],
        ),
      ],
    );
  }
}

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.r,
      margin: EdgeInsets.symmetric(vertical: 10.r),
      child: FilledButton(
        style: FilledButton.styleFrom(
            shape: StadiumBorder(
                side: BorderSide(color: context.colors.primary, width: 1.r)),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.r, vertical: 20.r),
          child: Text(
            'Add to cart',
            style: TextStyle(
                color: context.colors.primary,
                fontSize: 25.r,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.r,
      margin: EdgeInsets.symmetric(vertical: 10.r),
      child: FilledButton(
        style: FilledButton.styleFrom(
            shape: StadiumBorder(
                side: BorderSide(color: context.colors.primary, width: 1.r)),
            backgroundColor: context.colors.primary,
            foregroundColor: Colors.black),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.r, vertical: 20.r),
          child: Text(
            'Buy Now',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.r,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
