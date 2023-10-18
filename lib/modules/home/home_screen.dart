import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/modules/home/widgets/ad.dart';
import 'package:rubbin_store/modules/home/widgets/discover.dart';
import 'package:rubbin_store/modules/home/widgets/new_arrivals.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';
import 'package:rubbin_store/shared/widgets/nav_bar/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.onPrimary,
      body: SafeArea(
          child: Column(
        children: [
          NavBar(),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                AdWidget(),
                NewArrivals(),
                DiscoverProducts(),
                FilledButton(
                    style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r))),
                    onPressed: () {},
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60.r, vertical: 5.r),
                      child: Text(
                        'Load More',
                        style: TextStyle(
                            fontSize: 20.r, fontWeight: FontWeight.w700),
                      ),
                    )),
                SizedBox(
                  height: 20.r,
                )
              ],
            )),
          )
        ],
      )),
    );
  }
}
