import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Color.fromARGB(67, 217, 217, 217),
      ),
      width: 453.r,
      height: 48.r,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 20.r),
        cursorHeight: 25.r,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/search.png',
                width: 30.r,
                height: 30.r,
              )),
          hintText: "Search Product",
          contentPadding: EdgeInsets.symmetric(horizontal: 20.r),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.r),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.r),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
