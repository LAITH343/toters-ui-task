import 'package:flutter/material.dart';

class FoodDetials extends StatefulWidget {
  final String name;
  final String imageasset;
  final int price;
  FoodDetials({
    required this.name,
    required this.imageasset,
    required this.price,
  });

  @override
  State<FoodDetials> createState() => _FoodDetialsState();
}



class _FoodDetialsState extends State<FoodDetials> {
  @override
  bool CheckState = false;
  bool CheckState2 = false;
  int num = 0;
  int itemcount = 1;
  String itemcountString = "سلعة واحدة";
  
  Widget build(BuildContext context) {
    if (itemcount == 1) itemcountString = "سلعة واحدة";
    else if (itemcount == 2) itemcountString = "سلعتان";
    else if (itemcount > 2) itemcountString = "$itemcount سلع";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.share_outlined,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.favorite_outline,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: Icon(
                Icons.close,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.imageasset),
                      fit: BoxFit.cover)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey.withOpacity(0.4)),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: Text(
                            "د.ع ${widget.price}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                            ),
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, right: 5),
                            child: Text(
                              "أي تعليمات خاصة",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    label: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child: Text("اكتبها هنا"),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 130,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              itemcount++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        Text(
                          "$itemcount",
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (itemcount != 0) itemcount--;
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: GestureDetector(
                      onTap: itemcount != 0 ? (){} : null,
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: itemcount != 0 ? Colors.green : Colors.grey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "د.ع ${widget.price * itemcount}",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "أضافة الى العربة",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                itemcountString,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: NavBar(),
    );
  }
}
