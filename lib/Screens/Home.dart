import 'package:flutter/material.dart';
import 'package:social_app_test_ui/Screens/Profile.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'What\'s New',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Show all',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade500),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ShortCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class ShortCard extends StatelessWidget {
  const ShortCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Profile(
                      name: "mohammed",
                    )),
          );
        },
        child: Container(
          height: 200,
          child: ClipRRect(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.network(
                  "https://picsum.photos/200/300",
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Wow',
                    style:
                        TextStyle(color: Colors.white, decorationThickness: 5),
                  ),
                ),
              ],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
