import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

Container buildSearchAndOrangeButton() {
  return Container(
    height: 40,
    child: Row(
      children: [
        const SizedBox(width: 32,),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color:  Color(0x26bfc4f5),
                    offset:  Offset(0, 0),
                    blurRadius:  10,
                  ),
                ]
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                label: Text(
                  'Search',
                  textAlign:  TextAlign.center,
                  style:  TextStyle(
                    fontFamily: 'Mark Pro',
                    fontSize:  12,
                    fontWeight:  FontWeight.w400,
                    color:  Color(0x7f010035),

                  ),
                ),
                prefixIcon: Image.asset('assets/icons/search_icon.png'),
              ),
            ),
          ),
        ),
        const SizedBox(width: 11,),
        CircleAvatar(
          radius: 20,
          backgroundColor: Constants.orangeColorPalette,
          child: IconButton(
            splashRadius: 15,

            onPressed: () {},
            icon: Image.asset('assets/icons/qr_icon.png'),
          ),
        ),
        const SizedBox(width: 37,)
      ],
    ),
  );
}