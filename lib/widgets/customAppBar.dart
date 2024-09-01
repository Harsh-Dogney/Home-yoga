import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  AnimationController animationController;
  Animation colorsTween, homeTween, yogaTween, iconTween, drawerTween;

  Function()? onPressed;

  customAppBar({
    required this.animationController,
    required this.colorsTween,
    required this.drawerTween,
    required this.homeTween,
    required this.iconTween,
    required this.onPressed,
    required this.yogaTween,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) => AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.dehaze,
              color: drawerTween.value,
            ),
            onPressed: onPressed,
          ),
          backgroundColor: colorsTween.value,
          elevation: 0,
          title: Row(
            children: [
              Text(
                "HOME",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: homeTween.value),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "YOGA",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: yogaTween.value),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:5),
              child: Icon(
                Icons.notifications,
                color: iconTween.value,
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.green,
                foregroundImage: AssetImage('assets/logo/myIMG.jpeg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
