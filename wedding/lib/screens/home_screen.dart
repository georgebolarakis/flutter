import 'package:flutter/material.dart';

//Custom Widgets
//Icon - Text
//Row(Icon(), Text())
//class IconAndText(icon, text_string)
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Our Wedding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Cover Image (Assets)
            Image.asset('assets/wedding.png'),
            const SizedBox(
              height: 18,
            ),
            const IconAndText(
              Icons.calendar_month,
              'Jan 1',
            ),
            const IconAndText(
              Icons.location_city_outlined,
              'San Fransisco',
            ),
            const SizedBox(
              height: 18,
            ),
            const Text('We are getting married, join us!'),
          ],
        ),
      ),
    );
  }
}
