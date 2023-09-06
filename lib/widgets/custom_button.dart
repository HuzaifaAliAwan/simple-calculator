import 'package:calculator/utils/brand_colors.dart';
import 'package:calculator/utils/data_entry.dart';
import 'package:calculator/utils/decision_maker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  final String buttonText;
  TextEditingController btnController;

  CustomButton({
    super.key,
    required this.buttonText,
    required this.btnController,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool ispressed = false;

  Future<void> enterText() async {
    setState(() {
      widget.btnController.text =
          dataEntry(widget.btnController.text, widget.buttonText);
    });
  }

  Future<void> onButtonPressed() async {
    await enterText();
    if (!ispressed) {
      setState(() {
        ispressed = !ispressed;
      });
      Future.delayed(
          const Duration(
            milliseconds: 200,
          ), () {
        setState(() {
          ispressed = !ispressed;
        });
      });
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> buttonData = DecisionMaker(widget.buttonText);
    return Expanded(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: buttonData['BackgroundColor'],
            border: Border.all(
              color: ispressed
                  ? BrandColors.pressedStrokeColor
                  : BrandColors.unpressedStrokeColor,
              width: 0.5,
              style: BorderStyle.solid,
            ),
          ),
          child: TextButton(
            onPressed: () {
              onButtonPressed();
            },
            child: Center(
              child: Text(
                widget.buttonText,
                style: GoogleFonts.electrolize(
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: buttonData['TextColor'],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
