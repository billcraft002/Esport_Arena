import 'package:esports_arena/SomeScreen.dart';
import 'package:esports_arena/presentation/screens/Second_screen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: Somescreen, initial: true),
    MaterialRoute(page: SecondScreen),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
  ],
)
class AppSetup {}
