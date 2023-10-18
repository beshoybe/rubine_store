import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/widgets/product_card.dart';

class DiscoverProducts extends StatelessWidget {
  const DiscoverProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 73.r),
            child: Text(
              'Discover Products',
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 20.r,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 73.r),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500.r,
                    mainAxisExtent: 650.r,
                    crossAxisSpacing: 100.r),
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ProductCard();
                }),
          )
        ],
      ),
    );
  }
}
