import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/about');
            }, child: Text('Masuk Profile')
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/article-list');
            }, child: Text('Masuk List')
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/instagram');
            }, child: Text('Masuk Instagram')
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/latihantiga');
            }, child: Text('Masuk Latihan Tiga')
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/form-page');
            }, child: Text('Masuk Form')
            )
          ],
        ),
      ),
    );
  }
}
