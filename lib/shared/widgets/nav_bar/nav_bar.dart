import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';
import 'package:rubbin_store/shared/widgets/nav_bar/widgets/cart.dart';
import 'package:rubbin_store/shared/widgets/nav_bar/widgets/nav_buttons.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 73.r, top: 20.r, right: 73.r),
      height: 125.r,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 128.r,
                height: 75.r,
              ),
              SizedBox(
                width: 20.r,
              ),
              NavButton(
                title: 'Categories',
                dropDownX: 70.r,
                dropDownY: 288.r,
                dropDown: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 45.r,
                    ),
                    Container(
                      width: 170.r,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 234, 234),
                          border: Border(
                              top: BorderSide(
                                  color: context.colors.outlineVariant,
                                  width: 1.r))),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            ListTile(
                              title: Text("Hoddies"),
                            ),
                            ListTile(
                              title: Text("T-Shirst"),
                            ),
                            ListTile(
                              title: Text("Pants"),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              const NavButton(title: 'Deals'),
              const NavButton(title: 'New Arrivals'),
              const NavButton(title: 'Track Order'),
              Spacer(),
              SearchBar(),
              SizedBox(
                width: 10.r,
              ),
              CartWidget()
            ],
          ),
        ],
      ),
    );
  }
}
