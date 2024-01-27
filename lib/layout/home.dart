import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/views/search_view.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather',
          style: Theme.of(context).textTheme.titleLarge,
        ),

        actions: [
          IconButton(onPressed: () {
              Navigator.pushReplacementNamed(context, SearchScreen.routeName);
          }, icon: Icon(Icons.search),),
        ],

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'There is No Weather 😔 Start Searching Now 🔍',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
