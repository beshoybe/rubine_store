import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class SizesWidget extends StatefulWidget {
  const SizesWidget({super.key});

  @override
  State<SizesWidget> createState() => _SizesWidgetState();
}

class _SizesWidgetState extends State<SizesWidget> {
  final List<String> sizes = [
    'M Regular',
    'L Regular',
    'XL Regular',
    'XXL Regular',
    'M Oversized',
    'L Oversized',
    'XL Oversized',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.r,
        ),
        Text(
          'Size',
          style: TextStyle(
              fontSize: 30.r,
              color: context.colors.shadow,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 15.r,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.r, right: 200.r),
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300.r,
                  mainAxisExtent: 80.r,
                  crossAxisSpacing: 20.r),
              scrollDirection: Axis.vertical,
              itemCount: sizes.length,
              itemBuilder: (context, index) {
                return sizedButton(sizes[index], index);
              }),
        )
      ],
    );
  }

  Widget sizedButton(String title, int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.r),
      height: 40.r,
      width: 200.r,
      child: FilledButton(
        style: FilledButton.styleFrom(
            shape: StadiumBorder(
                side: BorderSide(color: context.colors.primary, width: 1.r)),
            backgroundColor:
                selectedIndex == index ? context.colors.primary : Colors.white,
            foregroundColor: Colors.black),
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: selectedIndex == index
                  ? Colors.white
                  : context.colors.primary,
              fontSize: 18.r,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
