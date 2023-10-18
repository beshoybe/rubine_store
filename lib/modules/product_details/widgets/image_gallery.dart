import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class ImagesGallery extends StatefulWidget {
  const ImagesGallery({super.key});

  @override
  State<ImagesGallery> createState() => _ImagesGalleryState();
}

class _ImagesGalleryState extends State<ImagesGallery> {
  List<String> images = [
    'assets/hoddie.png',
    'assets/hoddie.png',
    'assets/hoddie.png',
    'assets/hoddie.png'
  ];
  late String selectedImage;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      selectedImage = images.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 820.r,
          width: 935.r,
          decoration: BoxDecoration(
              border: Border.all(color: context.colors.outline, width: 1.r),
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                  image: AssetImage(selectedImage), fit: BoxFit.fill)),
        ),
        SizedBox(
          height: 39.r,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            imageWidget('assets/hoddie.png', 0),
            SizedBox(
              width: 39.r,
            ),
            imageWidget('assets/hoddie2.png', 1),
            SizedBox(
              width: 39.r,
            ),
            imageWidget('assets/hoddie3.png', 2),
            SizedBox(
              width: 39.r,
            ),
            imageWidget('assets/hoddie4.png', 3)
          ],
        )
      ],
    );
  }

  Widget imageWidget(String path, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedImage = path;
          selectedIndex = index;
        });
      },
      child: Container(
        height: 190.r,
        width: 190.r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: selectedIndex == index
                ? Border.all(color: context.colors.primary)
                : null,
            image: DecorationImage(image: AssetImage(path), fit: BoxFit.fill)),
      ),
    );
  }
}
