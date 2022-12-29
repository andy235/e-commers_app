import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

Container buildGeoWithFilters(scaffoldKey) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 125,
        ),
        Image.asset('assets/icons/location_icon.png'),
        const SizedBox(
          width: 15,
        ),
        const Text(
          'Zihuatanejo, Gro',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Mark Pro',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xff010035),
          ),
        ),
        const SizedBox(
          width: 13,
        ),
        Image.asset('assets/icons/drop_down_icon.png'),
        const SizedBox(
          width: 40,
        ),
        TextButton(
            onPressed: () {
              scaffoldKey.currentState!.showBottomSheet(
                  backgroundColor: Colors.transparent,
                  (context) => Container(
                        height: 375,
                        padding: EdgeInsets.only(left: 46),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30)),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    minimumSize: const Size(37, 37),
                                    maximumSize: const Size(37, 37),
                                    backgroundColor:
                                        Constants.blackColorPalette,
                                    padding: EdgeInsets.zero,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.clear,
                                    size: 17,
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                const Text(
                                  'Filter options',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Mark Pro',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff010035),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Color(0xffff6d4d),
                                    minimumSize: const Size(86, 37),
                                    maximumSize: const Size(86, 37),
                                  ),
                                  child: const Text(
                                    'Done',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Mark Pro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 31),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Brand',
                                    style: TextStyle(
                                      fontFamily: 'Mark Pro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff010035),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 300,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffdbdbdb)),
                                      ),
                                      child: DropdownButton(
                                        value: 'Samsung',
                                        icon: Padding(
                                          padding: EdgeInsets.only(left: 165),
                                          child: Image.asset(
                                              'assets/icons/drop_down_bottom_sheet.png'),
                                        ),
                                        underline: Container(),
                                        items: const [
                                          DropdownMenuItem<String>(
                                            value: 'Samsung',
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: Text(
                                                'Samsung',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Mark Pro',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff010035),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DropdownMenuItem<String>(
                                            value: 'OnePlus',
                                            child: Text(
                                              'OnePlus',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Mark Pro',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff010035),
                                              ),
                                            ),
                                          ),
                                          DropdownMenuItem<String>(
                                            value: 'Iphone',
                                            child: Text(
                                              'Iphone',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Mark Pro',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff010035),
                                              ),
                                            ),
                                          ),
                                        ],
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Price',
                                    style: TextStyle(
                                      fontFamily: 'Mark Pro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff010035),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 300,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffdbdbdb)),
                                      ),
                                      child: DropdownButton(
                                        value: '1',
                                        icon: Padding(
                                          padding: EdgeInsets.only(left: 145),
                                          child: Image.asset(
                                              'assets/icons/drop_down_bottom_sheet.png'),
                                        ),
                                        underline: Container(),
                                        items: const [
                                          DropdownMenuItem<String>(
                                            value: '1',
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: Text(
                                                '\$300 - \$500',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Mark Pro',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff010035),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DropdownMenuItem<String>(
                                            value: '2',
                                            child: Text(
                                              '\$500 - \$1000',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Mark Pro',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff010035),
                                              ),
                                            ),
                                          ),
                                          DropdownMenuItem<String>(
                                            value: '3',
                                            child: Text(
                                              '\$1000 - \$1500',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Mark Pro',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff010035),
                                              ),
                                            ),
                                          ),
                                        ],
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Size',
                                    style: TextStyle(
                                      fontFamily: 'Mark Pro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff010035),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 300,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffdbdbdb)),
                                      ),
                                      child: DropdownButton(
                                        value: '4.5 to 5.5 inches',
                                        icon: Padding(
                                          padding: EdgeInsets.only(left: 110),
                                          child: Image.asset(
                                              'assets/icons/drop_down_bottom_sheet.png'),
                                        ),
                                        underline: Container(),
                                        items: const [
                                          DropdownMenuItem<String>(
                                            value: '4.5 to 5.5 inches',
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: Text(
                                                '4.5 to 5.5 inches',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Mark Pro',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff010035),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DropdownMenuItem<String>(
                                            value: '5.5 to 6.5 inches',
                                            child: Text(
                                              '5.5 to 6.5 inches',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Mark Pro',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff010035),
                                              ),
                                            ),
                                          ),
                                          DropdownMenuItem<String>(
                                            value: '6.5 to 7.5 inches',
                                            child: Text(
                                              '6.5 to 7.5 inches',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Mark Pro',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff010035),
                                              ),
                                            ),
                                          ),
                                        ],
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 31,
                            ),
                          ],
                        ),
                      )
              );
            },
            child: Image.asset('assets/icons/filters.png'))
      ],
    ),
  );
}
