import 'package:esports_arena/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_debug_overlay/flutter_debug_overlay.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/app.router.dart';
import 'generated/l10n.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final HttpBucket httpBucket = HttpBucket();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Esport Arena',
          localizationsDelegates: const [
            Lang.delegate,
          ],
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.textfieldborder,
              brightness: Brightness.dark,
            ),
            scaffoldBackgroundColor: AppColors.backgroundColor,
            brightness: Brightness.dark,
            useMaterial3: false,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
            ),
          ),
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorObservers: [
            StackedService.routeObserver,
            NavigationHistoryObserver(),
          ],
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                highContrast: true,
                displayFeatures: MediaQuery.of(context).displayFeatures,
                gestureSettings: MediaQuery.of(context).gestureSettings,
                textScaler: TextScaler.noScaling,
                invertColors: false,
                boldText: false,
              ),
              child: child!,
            );
          },
        );
      },
    );
  }
}
