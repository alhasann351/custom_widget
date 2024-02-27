import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonName;
  final Icon? icon;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final VoidCallback? voidCallback;

  RoundedButton(
      {required this.buttonName,
      this.icon,
      this.backgroundColor = Colors.blue,
      this.textStyle,
      this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        voidCallback!();
      },
      style: ElevatedButton.styleFrom(
        shadowColor: backgroundColor,
        elevation: 15,
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
      child: icon != null
          ? Row(
        mainAxisSize: MainAxisSize.min,
              children: [
                icon!,
                const SizedBox(width: 10,),
                Text(
                  buttonName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              buttonName,
              style: textStyle,
            ),
    );
  }
}
