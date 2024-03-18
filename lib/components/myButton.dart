import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Function()? onTap;
  final Widget child;

  const MyButton({Key? key, required this.onTap, required this.child})
      : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: _isPressed
              ? Colors.grey[800]
              : Colors.grey[700], // Darken color when pressed
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: _isPressed
                ? Colors.black
                : Colors.transparent, // Change border color when pressed
            width: _isPressed ? 2.0 : 1.0, // Adjust border width when pressed
          ),
        ),
        child: Center(
          child: widget.child,
        ),
      ),
    );
  }
}
