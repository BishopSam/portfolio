import 'package:flutter/material.dart';
import 'package:portfolio_app/src/constants/app_sizes.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile_pic.jpg"),
            ),
            const Spacer(),
            Text(
              "Bishop Uzochukwu",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          
            const Text(
              "Flutter Developer & Intern at \n HNGi9",
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
