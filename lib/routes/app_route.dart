import 'package:flutter/material.dart';
import 'package:belajar_flutter/list_grid_view/article_list_screen.dart';
import 'package:belajar_flutter/pages/about_page.dart';
import 'package:belajar_flutter/pages/home_page.dart';
import 'package:belajar_flutter/buat_latihan/trymakeinstagram.dart';
import 'package:belajar_flutter/buat_latihan/latihan3.dart';
import 'package:belajar_flutter/pages/form_page.dart';

class AppRoute {
  static const home = '/';
  static const articleList = '/article-list';
  static const about = '/about';
  static const instagram = '/instagram';
  static const latihantiga = '/latihantiga';
  static const formPage = '/form-page';

  static Map<String, WidgetBuilder> routes = {

    home: (context) => const HomePage(),
    articleList: (context) => const ArticleListScreen(),
    about: (context) => const AboutPage(),
    instagram: (context) => const Gridinstagram(),
    latihantiga: (context) => Latihan3(),
    formPage: (context) => const FormPage(),
  };
}