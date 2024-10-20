import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';

class ButtonChangeSizeTextWidget extends StatefulWidget {
  final Function UppSize, DownSize;
  const ButtonChangeSizeTextWidget(
      {super.key, required this.UppSize, required this.DownSize});

  @override
  State<ButtonChangeSizeTextWidget> createState() =>
      _ButtonChangeSizeTextWidgetState();
}

class _ButtonChangeSizeTextWidgetState
    extends State<ButtonChangeSizeTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: widget.UppSize(),
            child: Container(
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.text_increase,
                  color: whiteColor,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: widget.DownSize(),
            child: Container(
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.text_decrease,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
