import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/shared/utils/extensions.dart';

class NavButton extends StatefulWidget {
  const NavButton(
      {super.key,
      required this.title,
      this.dropDown,
      this.dropDownX,
      this.dropDownY});
  final String title;
  final Widget? dropDown;
  final double? dropDownX;
  final double? dropDownY;

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool view = false;
  bool enteredMenu = false;
  @override
  Widget build(BuildContext context) {
    return PortalTarget(
      visible: widget.dropDown == null ? false : view,
      portalFollower: widget.dropDown == null
          ? null
          : Stack(
              children: [
                Positioned(
                    left: widget.dropDownY,
                    top: widget.dropDownX,
                    child: MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          if (!enteredMenu && view) enteredMenu = true;
                        });
                      },
                      onExit: (event) => setState(() {
                        if (enteredMenu && view) {
                          setState(() {
                            enteredMenu = false;
                            view = false;
                          });
                        }
                      }),
                      child: widget.dropDown!,
                    ))
              ],
            ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.r,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                onEnter: (event) => setState(() {
                      if (!view) view = true;
                    }),
                onExit: (event) => setState(() {
                      if (widget.dropDown != null) {
                        if (view && event.localPosition.dy < 10) {
                          view = false;
                        } else {
                          view = true;
                        }
                      } else {
                        if (view) view = false;
                      }
                    }),
                text: widget.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: view
                        ? context.colors.primaryContainer
                        : context.colors.primary,
                    fontSize: 22.r)),
          ])),
          Container(
            child: widget.dropDown == null
                ? null
                : MouseRegion(
                    onEnter: (event) => setState(() {
                          if (!view) view = true;
                        }),
                    onExit: (event) => setState(() {
                          if (view && event.localPosition.dy < 10) {
                            view = false;
                          }
                        }),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 7.r,
                        ),
                        Transform.rotate(
                          angle: -pi / 2,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: view
                                ? context.colors.primaryContainer
                                : context.colors.primary,
                            size: 15.r,
                          ),
                        ),
                      ],
                    )),
          )
        ],
      ),
    );
  }
}
