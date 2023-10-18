import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class ColorsWidget extends StatefulWidget {
  const ColorsWidget({super.key});

  @override
  State<ColorsWidget> createState() => _ColorsWidgetState();
}

class _ColorsWidgetState extends State<ColorsWidget> {
  final List<Color> colors = [
    Color(0xff000000),
    Color(0xffD0D0D0),
    Color(0xff4E6185),
    Color(0xffAA6A09)
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
          'Color',
          style: TextStyle(
              fontSize: 30.r,
              color: context.colors.shadow,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 15.r,
        ),
        Padding(
          padding: EdgeInsets.only(right: 150.r),
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100.r,
                  mainAxisExtent: 100.r,
                  crossAxisSpacing: 20.r),
              scrollDirection: Axis.vertical,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return sizedButton(colors[index], index);
              }),
        )
      ],
    );
  }

  Widget sizedButton(Color color, int index) {
    return InkWell(
      borderRadius: BorderRadius.circular(50.r),
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
          padding: EdgeInsets.all(3.r),
          margin: EdgeInsets.symmetric(vertical: 10.r),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selectedIndex == index ? context.colors.primary : null),
          height: 40.r,
          width: 200.r,
          child: CircleAvatar(
            backgroundColor: color,
          )),
    );
  }
}
