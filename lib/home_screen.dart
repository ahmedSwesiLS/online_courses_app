import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello,\nMahara Team',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    minRadius: 30,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trending',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.orange)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Image.network(
                                'https://img.freepik.com/free-vector/dark-gradient-background-with-copy-space_53876-99548.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705795200&semt=ais',
                                height: 100,
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
