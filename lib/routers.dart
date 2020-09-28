import 'package:flutter/material.dart';
import 'package:myapp/home/advertisement/advertisement.dart';

import 'discover/discover.dart';
import 'home/home.dart';
import 'home/swiper/swiper.dart';
import 'mine/mine.dart';
import 'order/order.dart';

final Map<String, WidgetBuilder> routers = {
  '/home': (context) => Home(),
  '/order': (context) => Order(),
  '/discover': (context) => Discover(),
  '/mine': (context) => Mine(),
  '/advertisement': (context) => Advertisement(),
  '/swiper': (context) => SwiperPage(),
};
