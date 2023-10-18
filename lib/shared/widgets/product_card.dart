import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/routes.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.r,
      width: 500.r,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.product);
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 15.r),
                        width: 500.r,
                        height: 500.r,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/hoddie.png',
                                )),
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                                color: context.colors.primary, width: 1.r)),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SelectableText(
                              "2pac hoddie",
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            SelectableText(
                              "400-500 EGP",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: context.colors.primary),
                            ),
                          ],
                        ),
                      ),
                      SelectableText.rich(
                        TextSpan(text: "New printed hoddie with amazing style"),
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ]),
              ),
              AddToCartButton()
            ],
          ),
          NewBadge()
        ],
      ),
    );
  }
}

class NewBadge extends StatelessWidget {
  const NewBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.r),
      padding: EdgeInsets.all(10.r),
      child: Text(
        'New',
        style: TextStyle(
            color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.w700),
      ),
      decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.r),
              bottomLeft: Radius.circular(10.r))),
    );
  }
}

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.r),
      height: 40.r,
      child: FilledButton(
        style: FilledButton.styleFrom(
            shape: StadiumBorder(
                side: BorderSide(color: context.colors.primary, width: 1.r)),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.r),
          child: Text(
            'Add to cart',
            style: TextStyle(
                color: context.colors.primary,
                fontSize: 18.r,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
