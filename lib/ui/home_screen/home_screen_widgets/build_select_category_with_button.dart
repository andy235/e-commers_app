import 'package:flutter/material.dart';

Container buildSelectCategoryWithButton() {
  return Container(
    child: Row(
      children: [
        SizedBox(width: 17,),
        const Text(
          'Select Category',
          textAlign:  TextAlign.center,
          style:  TextStyle(
            fontFamily: 'Mark Pro',
            fontSize:  25,
            fontWeight:  FontWeight.w700,
            color:  Color(0xff010035),
          ),
        ),
        Expanded(child: SizedBox()),
        TextButton(
          onPressed: () {},
          child: const Text(
            'view all',
            textAlign:  TextAlign.center,
            style:  TextStyle(
              fontFamily: 'Mark Pro',
              fontSize:  15,
              fontWeight:  FontWeight.w400,
              color:  Color(0xffff6d4d),
            ),
          ),
        ),
        const SizedBox(width: 22,),
      ],
    ),
  );
}