import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quicksplit/utils/app_constants.dart';
import 'package:quicksplit/utils/app_themes.dart';
import 'package:quicksplit/utils/router/static_app_routes.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName),
      ),
      body: Padding(padding: EdgeInsets.all(10), child: Column(
        children: [
          GestureDetector(
            onTap: (){
              context.pushNamed(StaticAppRoutes.budgetSplittingInputPage);
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppThemes.secondaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Center(child: Text('To bugdet splitting module')),
              ),
            ),
          )
        ],
      ),)
    );
  }
}
