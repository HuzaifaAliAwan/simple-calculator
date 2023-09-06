import 'package:calculator/utils/brand_colors.dart';
import 'package:calculator/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonTray extends StatefulWidget {
  const CustomButtonTray({super.key});

  @override
  State<CustomButtonTray> createState() => _CustomButtonTrayState();
}

class _CustomButtonTrayState extends State<CustomButtonTray> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: BrandColors.white,
          ),
          child: Center(
            child: TextField(
              controller: _controller,
              readOnly: true,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                hintText: "Enter Number",
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
              style: GoogleFonts.orbitron(
                textStyle: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        CustomRow(
          btnText1: 'C',
          btnText2: 'Abs',
          btnText3: 'Mod',
          btnText4: 'pow',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: 'fact',
          btnText2: 'isPrime',
          btnText3: 'sqrt',
          btnText4: '/',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: '7',
          btnText2: '8',
          btnText3: '9',
          btnText4: 'X',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: '4',
          btnText2: '5',
          btnText3: '6',
          btnText4: '-',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: '1',
          btnText2: '2',
          btnText3: '3',
          btnText4: '+',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: '0',
          btnText2: '.',
          btnText3: 'Del',
          btnText4: '=',
          rowController: _controller,
        ),
      ],
    );
  }
}
