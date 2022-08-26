import 'package:flutter/material.dart';

AppBar MyAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    elevation: 0.5,
    title: GestureDetector(
        onTap: () {},
        child: const Icon(
          Icons.filter_alt,
          color: Color(0xff909197),
          size: 20,
        )),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "توصيل الى",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: 20,
                  ),
                  Text(
                    "بغداد العراق",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}
