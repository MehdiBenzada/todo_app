import 'package:flutter/material.dart';

class categoryselector extends StatelessWidget {
  const categoryselector({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 70,
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Text(
                "Messages ",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Online ",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Groups ",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )),
    );
  }
}
