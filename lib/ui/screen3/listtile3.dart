import 'package:flutter/material.dart';

class ui3list extends StatelessWidget {
  
  final String item;
  final String subitem;
  final String image;
  final String trail;

  ui3list({required this.item,required this.subitem,required this.image,required this.trail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
                  title: Text(
                    'Order$item',
                  ),
                  subtitle: Text(
                    subitem,
                  ),
                  leading: CircleAvatar(
                    radius: 50,
                    child: Image(
                      image: NetworkImage(image),
                    ),
                  ),
                  trailing: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 55,
                        ),
                        child: Column(
                          children: [
                            Text(
                              trail,
                              style: const TextStyle(
                                color: Color.fromARGB(
                                  255,
                                  38,
                                  111,
                                  171,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.circle,
                              size: 15,
                              color: Colors.green,
                            )),
                            TextSpan(
                              text: 'Successfull',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
  }
}