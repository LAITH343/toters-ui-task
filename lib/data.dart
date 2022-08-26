import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:toters_task/screens/src/tagcard.dart';

List<CarouselItem> ImagessliderList = [
  sliderimgMaker("images/banner1.jpg"),
  sliderimgMaker("images/banner2.jpg"),
];

CarouselItem sliderimgMaker(String imgpath) {
  return CarouselItem(
    image: AssetImage(
      imgpath,
    ),
    boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    onImageTap: (i) {},
  );
}

class foodcardData {
  String? foodName;
  String? foodType;
  String? foodPrice;
  String? foodcatgo;
  String? foodRate;
  String? Imageasset;
  String? Time;
  String? Timehourmin;
  String? desc;
  List<Widget>? tags;
  foodcardData(
      String foodname,
      String foodtype,
      String foodprice,
      String foodcatgo,
      String foodrate,
      String imageasset,
      String time,
      String timehourmin,
      String desc,
      List<Widget> tags) {
    foodName = foodname;
    foodType = foodtype;
    foodPrice = foodPrice;
    this.foodcatgo = foodcatgo;
    foodRate = foodrate;
    Imageasset = imageasset;
    Time = time;
    Timehourmin = timehourmin;
    this.desc = desc;
    this.tags = tags;
  }
}

class food {
  String? Header;
  String? subHeader;
  List<foodcardData>? foodcardsinfo;
  food(String header, String subheader, List<foodcardData> foodcardinfo) {
    Header = header;
    subHeader = subheader;
    foodcardsinfo = foodcardinfo;
  }
}

List<Widget> Tags1 = [
  TagsCards(
    "20% خصم",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
  TagsCards(
    "أكسب نقاط",
    const Color(0xffe8f2fb),
    const Color(0xff548ab9),
    Icons.add,
    const Color(0xff548ab9),
  ),
];
List<Widget> Tags2 = [
  TagsCards(
    "30% احصل على خص",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
  TagsCards(
    "أكسب نقاط",
    const Color(0xffe8f2fb),
    const Color(0xff548ab9),
    Icons.add,
    const Color(0xff548ab9),
  ),
];
List<Widget> Tags3 = [
  TagsCards(
    "20% خصم",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
  TagsCards(
    "أكسب نقاط",
    const Color(0xffe8f2fb),
    const Color(0xff548ab9),
    Icons.add,
    const Color(0xff548ab9),
  ),
  TagsCards(
    "هدية",
    const Color(0xffe8f2fb),
    const Color(0xffcd6131),
    Icons.card_giftcard_sharp,
    const Color(0xff548ab9),
  ),
];
List<Widget> Tags4 = [
  TagsCards(
    "20% خصم",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
  TagsCards(
    "أكسب نقاط",
    const Color(0xffe8f2fb),
    const Color(0xff548ab9),
    Icons.add,
    const Color(0xff548ab9),
  ),
];

foodcardData foodcard1 = foodcardData(
    "برجر",
    "لحم",
    "\$\$",
    "فاست فود",
    "4.9",
    "images/burgerbeef.jpg",
    "10 - 15",
    "د",
    "نقدم اشهر انواع البرغر و السندويشات ووجبات الدجاج المقرمشة بالاضافة الى مجموعة متنوعة من المشروبات",
    Tags1);
foodcardData foodcard2 = foodcardData(
    "ريزو",
    ",",
    "\$\$",
    "عراقي",
    "4.8",
    "images/rezo_chicken.jpg",
    "25 - 30",
    "د",
    "نقدم اشهر انواع البرغر و السندويشات ووجبات الدجاج المقرمشة بالاضافة الى مجموعة متنوعة من المشروبات",
    Tags2);
foodcardData foodcard3 = foodcardData(
    "كص دجاج",
    "فاست فود",
    "\$\$",
    "عراقي",
    "4.7",
    "images/kase.jpg",
    "5 - 10",
    "د",
    "نقدم اشهر انواع البرغر و السندويشات ووجبات الدجاج المقرمشة بالاضافة الى مجموعة متنوعة من المشروبات",
    Tags3);
foodcardData foodcard4 = foodcardData(
    "صاج دجاج",
    "فاست فود",
    "\$\$",
    "عراقي",
    "4.5",
    "images/saj.jpg",
    "1 - 5",
    "د",
    "نقدم اشهر انواع البرغر و السندويشات ووجبات الدجاج المقرمشة بالاضافة الى مجموعة متنوعة من المشروبات",
    Tags4);

var foodData = food("فاست فود", "جرب اشهر انواع المأكولات السريعة",
    [foodcard1, foodcard2, foodcard3, foodcard4]);

var foodData2 = food("الاكثر طلباً ", "جرب المأكولات الاكثر طلباً ",
    [foodcard1, foodcard2, foodcard3, foodcard4]);


List<Widget> MainTags1 = [
  TagsCards(
    "20% خصم",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
  TagsCards(
    "أكسب نقاط",
    const Color(0xffe8f2fb),
    const Color(0xff548ab9),
    Icons.add,
    const Color(0xff548ab9),
  ),
];
List<Widget> MainTags2 = [
  TagsCards(
    "30% احصل على خص",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
  TagsCards(
    "أكسب نقاط",
    const Color(0xffe8f2fb),
    const Color(0xff548ab9),
    Icons.add,
    const Color(0xff548ab9),
  ),
];
List<Widget> MainTags3 = [
  TagsCards(
    "20% خصم",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
  TagsCards(
    "أكسب نقاط",
    const Color(0xffe8f2fb),
    const Color(0xff548ab9),
    Icons.add,
    const Color(0xff548ab9),
  ),
  TagsCards(
    "هدية",
    const Color(0xffe8f2fb),
    const Color(0xffcd6131),
    Icons.card_giftcard_sharp,
    const Color(0xff548ab9),
  ),
   TagsCards(
    "30% احصل على خص",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
];
List<Widget> MainTags4 = [
  TagsCards(
    "20% خصم",
    const Color(0xfffef6f3),
    const Color(0xffcd6131),
    Icons.discount_outlined,
    const Color(0xffcd6131),
  ),
  TagsCards(
    "أكسب نقاط",
    const Color(0xffe8f2fb),
    const Color(0xff548ab9),
    Icons.add,
    const Color(0xff548ab9),
  ),
];

foodcardData mainfoodcard1 = foodcardData(
    "دولمة",
    ",",
    "\$\$",
    "عراقية",
    "4.9",
    "images/dolama.jpeg",
    "1",
    "س",
    "نقدم اشهر انواع البرغر و السندويشات ووجبات الدجاج المقرمشة بالاضافة الى مجموعة متنوعة من المشروبات",
    MainTags1);
foodcardData mainfoodcard2 = foodcardData(
    "برياني",
    "دجاج",
    "\$\$",
    "عراقي",
    "4.8",
    "images/beriane.jpg",
    "1",
    "س",
    "نقدم اشهر انواع البرغر و السندويشات ووجبات الدجاج المقرمشة بالاضافة الى مجموعة متنوعة من المشروبات",
    MainTags2);
foodcardData mainfoodcard3 = foodcardData(
    "مندي",
    "لحم",
    "\$\$",
    "عراقي",
    "4.7",
    "images/mende.jpg",
    "1.5",
    "س",
    "نقدم اشهر انواع الاطباق الرئيسية بالاضافة الى مجموعة متنوعة من المشروبات",
    MainTags3);


var mainFooddata = food("الوجبات الرئيسية ", "أفضل الاطباق الرئيسية و الاكثر طلبا ",
    [mainfoodcard1, mainfoodcard2, mainfoodcard3]);