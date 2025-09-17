import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/post_viewmodel.dart';
import 'ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostViewModel()..loadPosts(),
      child: MaterialApp(
        title: 'Retrofit MVVM Example',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePage(),
      ),
    );
  }
}
