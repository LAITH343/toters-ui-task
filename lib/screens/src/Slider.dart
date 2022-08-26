import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:toters_task/data.dart';

Padding SliedsImages() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SizedBox(
      height: 160,
      child: CustomCarouselSlider(
        showSubBackground: false,
        items: ImagessliderList,
        height: 150,
        subHeight: 50,
        autoplay: true,
      ),
    ),
  );
}
