import 'package:flutter/material.dart';
import 'package:belajar_flutter/buat_latihan/Latihan3.dart';
import 'package:belajar_flutter/buat_latihan/Latihan4.dart';
import 'package:belajar_flutter/buat_latihan/trymakeinstagram.dart';
import 'package:belajar_flutter/container/Container1.dart';
import 'package:belajar_flutter/container/Latihan1.dart';
import 'package:belajar_flutter/container/LatihanContainer.dart';
import 'package:belajar_flutter/list_grid_view/article_list_screen.dart';
import 'package:belajar_flutter/list_grid_view/detail_screen.dart';
import 'package:belajar_flutter/list_grid_view/grid_product_page.dart';
import 'package:belajar_flutter/pages/about_page.dart';
import 'package:belajar_flutter/pages/form_page.dart' as basic_form;
import 'package:belajar_flutter/pages/home_page.dart';
import 'package:belajar_flutter/pages/input_page.dart';
import 'package:belajar_flutter/pages/output_page.dart';
import 'package:belajar_flutter/navigator.dart';
import 'package:belajar_flutter/row_column/ColumnWidget.dart';
import 'package:belajar_flutter/row_column/RowColumnWidget.dart';
import 'package:belajar_flutter/row_column/RowWidget.dart';
import 'package:belajar_flutter/sized_box/ExpandedWidget.dart';
import 'package:belajar_flutter/sized_box/LayoutDua.dart';
import 'package:belajar_flutter/sized_box/LayoutEmpat.dart';
import 'package:belajar_flutter/sized_box/LayoutSatu.dart';
import 'package:belajar_flutter/sized_box/SizedBoxWidget.dart';
import 'package:belajar_flutter/sized_box/StackWidget.dart';
import 'package:belajar_flutter/pages/eskul_form.dart';
import 'package:belajar_flutter/tugasai/item_list_page.dart';
import 'package:belajar_flutter/tugasai/detail_item_page.dart';
import 'package:belajar_flutter/tugasai/receipt_page.dart';

class AppRoute {
  static const home = '/';
  static const articleList = '/article-list';
  static const articleDetail = '/article-detail';
  static const gridProduct = '/grid-product';
  static const about = '/about';
  static const instagram = '/instagram';
  static const latihantiga = '/latihantiga';
  static const latihanEmpat = '/latihan-empat';
  static const formPage = '/form-page';
  static const form = '/form';
  static const navigator = '/navigator';

  static const container1 = '/container/container-1';
  static const latihan1 = '/container/latihan-1';
  static const latihanContainer = '/container/latihan-container';

  static const rowWidget = '/row-column/row';
  static const columnWidget = '/row-column/column';
  static const rowColumnWidget = '/row-column/row-column';

  static const expandedWidget = '/sized-box/expanded';
  static const layoutSatu = '/sized-box/layout-satu';
  static const layoutDua = '/sized-box/layout-dua';
  static const layoutEmpat = '/sized-box/layout-empat';
  static const sizedBoxWidget = '/sized-box/sized-box';
  static const stackWidget = '/sized-box/stack';
  static const eskulForm = '/eskul-form';
  static const kasir = '/kasir';
  static const detailItem = '/detail-item';
  static const receiptPage = '/receipt-page';

  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
    articleList: (context) => const ArticleListScreen(),
    articleDetail: (context) {
      final arguments = ModalRoute.of(context)?.settings.arguments;
      if (arguments is! Map<String, String>) {
        throw FlutterError(
          'The $articleDetail route requires Map<String, String> arguments.',
        );
      }
      return ArticleDetailScreen(data: arguments);
    },
    gridProduct: (context) => const GridProductPage(),
    about: (context) => const AboutPage(),
    instagram: (context) => const Gridinstagram(),
    latihantiga: (context) => Latihan3(),
    latihanEmpat: (context) => const Latihan4(),
    formPage: (context) => const BelajarForm(),
    navigator: (context) => const NavigatorWidget(),
    container1: (context) => const Container1(),
    latihan1: (context) => const Latihan1(),
    latihanContainer: (context) => const LatihanContainer(),
    rowWidget: (context) => const RowWidget(),
    columnWidget: (context) => const ColumnWidget(),
    rowColumnWidget: (context) => const RowColumnWidget(),
    expandedWidget: (context) => ExpandedWidget(),
    layoutSatu: (context) => LayoutSatu(),
    layoutDua: (context) => LayoutDua(),
    layoutEmpat: (context) => ProfileWidget(),
    sizedBoxWidget: (context) => SizedBoxWidget(),
    stackWidget: (context) => StackWidget(),
    eskulForm: (context) => const EskulForm(), // Diperbaiki (huruf 'a' dibuang)
    kasir: (context) => const ItemListPage(),
    detailItem: (context) => const DetailItemPage(
          coachName: "Coach Tio",
          specialty: "Senior Striking • Certified Pro",
          pricePerSession: 300,
          rating: "4.9",
        ),
    receiptPage: (context) => const ReceiptPage(
          coachName: "Coach Tio",
          specialty: "Senior Striking • Certified Pro",
          selectedHours: 2,
          pricePerSession: 300,
          paymentMethod: "cash",
          cashPaid: 1000,
          changeAmount: 400,
        ),
  };
}