import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubbin_store/color_schemes.g.dart';
import 'package:rubbin_store/routes.dart';

class RubbinStore extends StatelessWidget {
  const RubbinStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1920, 1300),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Portal(
            child: MaterialApp(
              routes: routes,
              debugShowCheckedModeBanner: false,
              title: 'Rubbine Store',
              theme: ThemeData(
                  useMaterial3: true,
                  colorScheme: lightColorScheme,
                  textTheme: TextTheme(
                      headlineMedium: TextStyle(
                          fontSize: 22.sp, color: lightColorScheme.primary))),
              initialRoute: Routes.initialRoute,
            ),
          );
        });
  }
}
