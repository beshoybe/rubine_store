import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/modules/product_details/widgets/add_to_cart.dart';
import 'package:rubbin_store/modules/product_details/widgets/colors.dart';
import 'package:rubbin_store/modules/product_details/widgets/header.dart';
import 'package:rubbin_store/modules/product_details/widgets/image_gallery.dart';
import 'package:rubbin_store/modules/product_details/widgets/sizes.dart';
import 'package:rubbin_store/modules/product_details/widgets/titles.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';
import 'package:rubbin_store/shared/widgets/nav_bar/nav_bar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.onPrimary,
      body: SafeArea(
          child: Column(
        children: [
          NavBar(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 60.0.r),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.r,
                    ),
                    Header(),
                    SizedBox(
                      height: 15.r,
                    ),
                    SizedBox(
                      height: 1050.r,
                      child: Row(
                        children: [
                          ImagesGallery(),
                          SizedBox(
                            width: 70.r,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProductTitle(),
                                SizesWidget(),
                                ColorsWidget(),
                                AddToCart(),
                                Spacer()
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
