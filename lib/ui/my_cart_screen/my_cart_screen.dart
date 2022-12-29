import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70,),
            Row(
              children: [
                const SizedBox(width: 42,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)
                    ),
                    minimumSize: const Size(37, 37),
                    maximumSize: const Size(37, 37),
                    backgroundColor: Constants.blackColorPalette,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_left,
                    size: 30,
                    color: Color(0xffffffff),
                  ),
                ),
                Expanded(child: SizedBox()),
                const Text(
                  'Add address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Mark Pro',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff010035),
                  ),
                ),
                const SizedBox(width: 9,),
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)),
                    backgroundColor: Color(0xffff6d4d),
                    minimumSize: const Size(37, 37),
                    maximumSize: const Size(37, 37),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Icon(Icons.location_on_outlined,),
                ),
                const SizedBox(width: 20,),
              ],
            ),
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.only(left: 42),
              child: Text(
                'My Cart',
                textAlign:  TextAlign.center,
                style:  TextStyle(
                  fontFamily: 'Mark Pro',
                  fontSize:  35,
                  fontWeight:  FontWeight.w700,
                  color:  Color(0xff010035),
                ),
              ),
            ),
            const SizedBox(height: 49,),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Constants.blackColorPalette,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),

                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x33ffffff),
                          ),
                        ),
                      ),
                      const SizedBox(height: 26,),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 55,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Total',
                                      textAlign:  TextAlign.center,
                                      style:  TextStyle (
                                        fontFamily: 'Mark Pro',
                                        fontSize:  15,
                                        fontWeight:  FontWeight.w400,
                                        color:  Color(0xffffffff),
                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                    Text(
                                      'Delivery',
                                      textAlign:  TextAlign.center,
                                      style:  TextStyle (
                                        fontFamily: 'Mark Pro',
                                        fontSize:  15,
                                        fontWeight:  FontWeight.w400,
                                        color:  Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '\$6,000 us',
                                      textAlign:  TextAlign.center,
                                      style:  TextStyle (
                                        fontFamily: 'Mark Pro',
                                        fontSize:  15,
                                        fontWeight:  FontWeight.w700,
                                        color:  Color(0xffffffff),
                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                    Text(
                                      'Free',
                                      textAlign:  TextAlign.center,
                                      style:  TextStyle (
                                        fontFamily: 'Mark Pro',
                                        fontSize:  15,
                                        fontWeight:  FontWeight.w700,
                                        color:  Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 35,)
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 26,),
                      SizedBox(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x33ffffff),
                          ),
                        ),
                      ),
                      const SizedBox(height: 27,),
                      Padding(
                          padding: EdgeInsets.only(left: 44, right: 44, bottom: 44),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(10)
                              ),
                              minimumSize: const Size(326, 54),
                              maximumSize: const Size(326, 54),
                              backgroundColor: Constants.orangeColorPalette,
                            ),
                              onPressed: () {},
                              child: const Text(
                                'Checkout',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontFamily: 'Mark Pro',
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w700,
                                  color:  Color(0xffffffff),
                                ),
                              ),
                          )
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
