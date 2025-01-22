import 'package:flutter/material.dart';
import 'package:flutter_application_test/app_router.dart';


/// model
// song controller 

// view 
main() {
runApp(  BreakingBadApp(appRouter: AppRouter() ,));  
}
class BreakingBadApp extends StatelessWidget {
  const BreakingBadApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     onGenerateRoute: appRouter.generateRoute,

    );
  }
}