import 'package:flutter/material.dart';

///Rows,Columns,ListView,PageView,Wrap,Stack,
///
/// Rows and Columns
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.yellow),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shopping Now!",
                        ),
                        Container(
                          width: 150,
                          child: Text(
                            "Shopping Bag. Hand Holding a Shopping Graphic by DEEMKA STUDIO · Creative Fabrica",
                            style: TextStyle(color: Colors.grey, fontSize: 9),
                          ),
                        ),
                      ],
                    ),
                    Image.network(
                      "https://www.creativefabrica.com/wp-content/uploads/2021/03/02/Shopping-bag-Hand-holding-a-shopping-Graphics-9096002-1.png",
                      width: 250,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
