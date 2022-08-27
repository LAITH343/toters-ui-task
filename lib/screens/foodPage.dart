import 'package:flutter/material.dart';
import 'package:toters_task/screens/detials.dart';

class FoodPage extends StatefulWidget {
  final String imageasset;
  final String time;
  final String Timehourmin;
  final String label;
  final String desc;
  final List<Widget> tags;
  final String rate;
  const FoodPage({
    required this.imageasset,
    required this.time,
    required this.Timehourmin,
    required this.label,
    required this.desc,
    required this.tags,
    required this.rate,
  });

  @override
  State<FoodPage> createState() => _FoodPageState();
}
int price = 6000;
class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        image: DecorationImage(
                            image: AssetImage(widget.imageasset),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    left: 20,
                    bottom: -10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 0.5,
                                spreadRadius: 0.7)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                widget.time,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              widget.Timehourmin,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Icon(
                                      Icons.search_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Icon(
                                      Icons.share,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        widget.label,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        child: Text(
                          widget.desc,
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.9),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    Wrap(
                      spacing: 5,
                      direction: Axis.vertical,
                      children: widget.tags,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xff5fd1bb),
                              size: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 25,
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          size: 25,
                                          color: Color(0xff5fd1bb),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          size: 25,
                                          color: Color(0xff5fd1bb),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          size: 25,
                                          color: Color(0xff5fd1bb),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          size: 25,
                                          color: Color(0xff5fd1bb),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "أستنادا الى 1000 من التقييمات",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.8)),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  widget.rate,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 3,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(0xff5fd1bb),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(0xff5fd1bb),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(0xff5fd1bb),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(0xff5fd1bb),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(0xff5fd1bb),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "mustafa",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "وقت قياسي في التجهيز وخدمة ممتازة",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Text("شائع", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              
              Container(
                height: 220,
                child: SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      EmbededFoodCards(context),
                      EmbededFoodCards(context),
                      EmbededFoodCards(context),
                      EmbededFoodCards(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding EmbededFoodCards(BuildContext context) {
    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Container(
                        width: 241,
                        height: 210,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 20,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodDetials(name: widget.label, imageasset: widget.imageasset, price: price,)));
                                });
                              },
                              child: Container(
                                height: 130,
                                width: 240,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(widget.imageasset),
                                    fit: BoxFit.cover,
                                  )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "برجر",
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "د.ع $price",
                                    style: TextStyle(fontSize: 15, color: Colors.green),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),                  
                      ),
                    );
  }
}
