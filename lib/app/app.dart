import 'package:esports_arena/presentation/es_authentication/es_sign_up/es_sign_in_screen.dart';
import 'package:esports_arena/presentation/es_splesh/es_splesh.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: MyCustomSplashScreen, initial: true),
    MaterialRoute(page: EsSignInScreen),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
  ],
)
class AppSetup {}
