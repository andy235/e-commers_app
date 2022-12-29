import 'package:flutter/material.dart';
import 'package:test_app_kalchuk235/constants/constants.dart';

// List<bool> selectedItem =[
//   false,
//   false,
//   false,
//   false,
//   false
// ];
Color selectedColorItem = Constants.orangeColorPalette;

List<Color> defaultBackgroundColor = [
  Color(0xffffffff),
  Color(0xffffffff),
  Color(0xffffffff),
  Color(0xffffffff),
  Color(0xffffffff),
];
List<Color> defaultTextColor = [
  Color(0xff010035),
  Color(0xff010035),
  Color(0xff010035),
  Color(0xff010035),
  Color(0xff010035),
];


Container buildScrollItem() {
  return Container(
    height: 100,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 27,),
              selectedButton('assets/icons/phone_icon.png', 'Phones', defaultBackgroundColor[0], defaultTextColor[0]),
              const SizedBox(width: 23,),
              selectedButton('assets/icons/computer_icon.png', 'Computer', defaultBackgroundColor[1], defaultTextColor[1]),
              const SizedBox(width: 23,),
              selectedButton('assets/icons/health_icon.png', 'Health', defaultBackgroundColor[2], defaultTextColor[2]),
              const SizedBox(width: 23,),
              selectedButton('assets/icons/book_icon.png', 'Books', defaultBackgroundColor[3], defaultTextColor[3]),
              const SizedBox(width: 23,),
              selectedButton('assets/icons/phone_icon.png', 'Phones', defaultBackgroundColor[4], defaultTextColor[4]),
              const SizedBox(width: 23,),
            ],
          )
        ]
    ),
  );
}




Column selectedButton(String assetPath, String text, Color defaultBacG, Color defaultT) {
  return Column(
    children: [
      Container(
          child: ElevatedButton(
            onPressed: () {

              defaultBacG = selectedColorItem;
              defaultT = selectedColorItem;
            },
            child: Image.asset(
              assetPath,
              color: assetPath == 'assets/icons/health_icon.png' ? Color(0xff010035) : Color(0xffB3B3C3),
            ),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: defaultBacG,
                minimumSize: Size(71, 71),
                elevation: 0,
                shadowColor: Color(0xffA7ABC9)),
          ),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(35.5),
            boxShadow: const [
              BoxShadow(
                color: Color(0x26a7aac8),
                offset: Offset(0, 0),
                blurRadius: 10,
              ),
            ],
          )),
      const SizedBox(
        height: 7,
      ),
      Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Mark Pro',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: defaultT,
        ),
      ),
    ],
  );
}