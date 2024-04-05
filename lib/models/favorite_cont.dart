import 'package:flutter/material.dart';
import 'package:messenger/models/message_model.dart';

class favorite extends StatelessWidget {
  const favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 700,
        width: double.infinity,
        child: Card(
            margin: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(30.0), // Set border radius here
            ),
            color: const Color.fromARGB(255, 255, 243, 207),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 18, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favorite contacts",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 89, 89, 89),
                            fontSize: 18),
                      ),
                      Text(
                        "...",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: favorites.length,
                      itemBuilder: (BuildContext context, int index) {
                        final fav = favorites[index];

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(fav.imageUrl),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                fav.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 133, 128, 128)),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )));
  }
}
