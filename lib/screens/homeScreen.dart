import 'package:flutter/material.dart';
import 'package:toters_task/data.dart';
import 'package:toters_task/screens/src/AppBar.dart';
import 'package:toters_task/screens/src/Slider.dart';
import 'package:toters_task/screens/src/category.dart';
import 'package:toters_task/screens/src/foodCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _Cindex = 4;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      emptyScreen(_Cindex),
      emptyScreen(_Cindex),
      emptyScreen(_Cindex),
      emptyScreen(_Cindex),
      MainScreen(context)
    ];
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _Cindex == 4 ? MyAppbar() : null,
      body: screens[_Cindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _Cindex,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff00cd8e),
        unselectedItemColor: const Color(0xff8f9198),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: "حساب"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
              ),
              label: "طلبات"),
          BottomNavigationBarItem(
              icon: Icon(Icons.personal_injury), label: "المندوب"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "بحث"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "رئيسية"),
        ],
        onTap: (index) {
          setState(() {
            _Cindex = index;
          });
        },
      ),
    );
  }

  SafeArea MainScreen(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "سجل الدخول بأستخدام تطبيق توترز وأستمتع بمزايا حصرية",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(Icons.login, color: Colors.blue, size: 25),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SliedsImages(),
                  Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          20,
                                      child: Wrap(
                                        direction: Axis.horizontal,
                                        alignment: WrapAlignment.center,
                                        children: [
                                          CategoryMaker(context,
                                              "images/burger.jpg", "مطاعم"),
                                          CategoryMaker(context,
                                              "images/delevery.png", "المندوب"),
                                          CategoryMaker(
                                              context,
                                              "images/wallet.png",
                                              "أضافة رصيد"),
                                          CategoryMaker(context,
                                              "images/shop_bag.png", "متاجر"),
                                          CategoryMaker(context,
                                              "images/market.png", "البقالة"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 15,
                              color: Colors.grey.withOpacity(0.1),
                            ),
                          )
                        ],
                      )),
                  FoodCardMaker(context, foodData),
                  FoodCardMaker(context, mainFooddata),
                  FoodCardMaker(context, foodData),
                  FoodCardMaker(context, foodData2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container emptyScreen(int cindex) {
    String? Label;
    if (cindex == 3) {
      Label = "البحث";
    } else if (cindex == 2) {
      Label = "المندوب";
    } else if (cindex == 1) {
      Label = "الطلبات";
    } else if (cindex == 0) {
      Label = "الحساب";
    } else {
      Label = "unkwon";
    }
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "صفحة $Label",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        )
      ]),
    );
  }
}
