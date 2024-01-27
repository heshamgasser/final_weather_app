import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/layout/home.dart';
import 'package:weather_app/views/widgets/search_city_widget.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = 'Search Screen';

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search a City',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchCity(
                controller: controller,
                hintText: 'Enter City Name',
                labelText: 'Enter City Name'),
          ],
        ),
      ),
    );
  }
}
