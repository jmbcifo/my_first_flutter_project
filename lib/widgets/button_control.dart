import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final String heroTag;
  const ButtonControl({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
