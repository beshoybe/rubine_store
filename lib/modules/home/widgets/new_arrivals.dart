import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/widgets/product_card.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 85.r),
      height: 750.r,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 73.r),
            child: Text(
              'New Arrivals',
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 20.r,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return index == 0
                      ? SizedBox(
                          width: 73.r,
                        )
                      : Padding(
                          padding: EdgeInsets.only(right: 50.r),
                          child: ProductCard(),
                        );
                }),
          )
        ],
      ),
    );
  }
}
