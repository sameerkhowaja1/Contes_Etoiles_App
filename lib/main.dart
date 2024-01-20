import 'package:contes_etoiles/utils/app_colors.dart';
import 'package:contes_etoiles/utils/app_strings.dart';
import 'package:contes_etoiles/utils/route_generator.dart';
import 'package:contes_etoiles/utils/screen_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // ThemeData _buildTheme(darkness) {
  //   var baseTheme = ThemeData(primaryColorDark: darkness);


  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      //textTheme: GoogleFonts.familjenGroteskTextTheme(baseTheme.textTheme),
      scaffoldBackgroundColor: kBlackColor,
      colorScheme: ThemeData().colorScheme.copyWith(primary: kPrimaryColor),
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
            theme: _buildTheme(Brightness.dark),
            title: kAppName,
            debugShowCheckedModeBanner: false,
            initialBinding: ScreenBindings(),
            initialRoute: kSplashRoute,
            getPages: RouteGenerator.getPages(),
            builder: (context, child) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: MediaQuery.of(context).textScaleFactor.clamp(1.0, 1.0)), child: child!);
            });
      },
    ) ;
  }
}

