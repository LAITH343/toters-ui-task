import 'package:flutter/material.dart';
import 'package:toters_task/screens/foodPage.dart';

Padding FoodCardMaker(var context, var fooddata) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Container(
      height: 350,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            child: TextButton(
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.arrow_back_ios,
                            color: Colors.blue, size: 20),
                        Container(
                          child: Text(
                            fooddata.Header,
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: Container(
                      child: Text(
                        fooddata.subHeader,
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.5)),
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            children: [
              for (var data in fooddata.foodcardsinfo)
                FoodCard(
                  context,
                  data.Imageasset,
                  data.foodName,
                  data.foodType,
                  data.foodcatgo,
                  "\$\$",
                  data.Time,
                  data.Timehourmin,
                  data.foodRate,
                  data.desc,
                  data.tags,
                ),
            ],
          ))
        ],
      ),
    ),
  );
}

Padding FoodCard(
    var context,
    String Imageasset,
    String foodName,
    String foodType,
    String foodcatgo,
    String foodPrice,
    String Time,
    String Timehourmin,
    String foodRate,
    String desc,
    List<Widget> tags) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FoodPage(
                    imageasset: Imageasset,
                    time: Time,
                    Timehourmin: Timehourmin,
                    label: foodName,
                    desc: desc,
                    tags: tags,
                    rate: foodRate,
                  )));
        },
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 135,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(Imageasset),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      foodName,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        "$foodType, $foodcatgo",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        foodPrice,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Wrap(
                    runSpacing: 4.0,
                    runAlignment: WrapAlignment.end,
                    crossAxisAlignment: WrapCrossAlignment.end,
                    spacing: 10,
                    direction: Axis.vertical,
                    children: tags,
                  ),
                )
              ],
            ),
            Positioned(
              left: 15,
              top: 90,
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
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          Time,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        Timehourmin,
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
            Positioned(
              top: 10,
              left: 20,
              child: GestureDetector(
                onTap: (){},
                child: Icon(Icons.favorite_outline, color: Colors.white, size: 30,),
              ),
            )
          ],
        )),
  );
}
