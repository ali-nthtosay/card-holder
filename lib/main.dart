import 'package:card_holder/pages/home_page.dart';
import 'package:card_holder/pages/scan_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    );
  }
   final GoRouter _router = GoRouter(
     routes: <RouteBase>[
       GoRoute(
         path: '/',
         builder: (BuildContext context, GoRouterState state) {
           return const HomePage();
         },
         routes: <RouteBase>[
           GoRoute(
             path: 'scan',
             builder: (BuildContext context, GoRouterState state) {
               return const ScanPage();
             },
           ),
         ],
       ),
     ],
   );
}
