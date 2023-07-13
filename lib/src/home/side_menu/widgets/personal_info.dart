import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: AspectRatio(
        aspectRatio: 1.23,
        child: Column(
          children: [
            const Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundColor: Theme.of(context).canvasColor,
              backgroundImage:
                  const AssetImage("assets/images/profile_pic2.jpg"),
            ),
            const Spacer(),
            Text(
              "Bishop Uzochukwu",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Flutter Mobile Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
