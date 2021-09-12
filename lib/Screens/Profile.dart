import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  String name;
  Profile({Key? key, required String this.name}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text("Profile"),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("back"))
            ],
          ),
        ),
      ),
    );
  }
}
