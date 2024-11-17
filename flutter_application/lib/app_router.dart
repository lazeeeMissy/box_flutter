import 'package:flutter_application/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
   @override
  RouteType get defaultRouteType => RouteType.material(); 

  @override
   List<AutoRoute> get routes=>[
    AutoRoute(page: MyHomePageRoute.page, path:'/home', initial: true ),
    AutoRoute(page: BoxPageRoute.page, path: '/boxPage/:boxId'),
   ];
}


