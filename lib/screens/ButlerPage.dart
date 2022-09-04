import 'dart:ui';

import 'package:flutter/material.dart';

class ButlerPage extends StatefulWidget {
  const ButlerPage({Key? key}) : super(key: key);

  @override
  State<ButlerPage> createState() => _ButlerPageState();
}

class _ButlerPageState extends State<ButlerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 100,
              color: Color(0xff00b68d),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "!نوصل أي شيء يسع على متن دراجة نارية",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                ":اطلب مندوب ل",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DeliverMethodsCard(
                "توصيل احتياجاتك",
                "مثلا نسيت مفاتيحك بالبيت, تريد احد يوصله لك للمكتب",
                "images/delevier_thing_img.png"),
            DeliverMethodsCard(
                "شراء احتياجاتك",
                "ما لقيت اللي تريده بتطبيقنا ؟ مندوب توترز يقدر يشتري الي تحتاجه من أي مكان تختاره",
                "images/buy_thing_img.png"),
          ],
        ),
      ),
    );
  }

  Padding DeliverMethodsCard(
      String HeadText, String SubHeadText, String Imageassetpath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Color(0xfff8f6f8),
                    blurRadius: 2,
                    offset: Offset(2, 1))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Color(0xff00b68d),
                ),
                Image(
                  image: AssetImage(Imageassetpath),
                  width: 70,
                  height: 70,
                ),
                Container(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        HeadText,
                        style: TextStyle(
                            color: Color(0xff00b68d),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        SubHeadText,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
