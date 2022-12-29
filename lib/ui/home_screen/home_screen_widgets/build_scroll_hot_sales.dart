import 'package:flutter/material.dart';
import 'package:test_app_kalchuk235/constants/constants.dart';

import '../../../net/get_api_data_for_home_page.dart';

FutureBuilder<ApiForHomePage>buildScrollHotSales(BuildContext context, hotSalesList) {
  return FutureBuilder<ApiForHomePage>(
    future: hotSalesList,
    builder: (context, snapshot) {
      if(snapshot.hasData) {
        return Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data?.homeStore?.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width - 28,
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  child: Stack(
                    children: [
                      Image.network('${snapshot.data?.homeStore![index].picture}'),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: snapshot.data?.homeStore![index].isNew == true ? Constants.orangeColorPalette : Colors.transparent,
                              child: Text(
                                'New',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontFamily: 'SF Pro Display',
                                  fontSize:  10,
                                  fontWeight:  FontWeight.w700,
                                  height:  1.2575,
                                  letterSpacing:  -0.3333333433,
                                  color:  snapshot.data?.homeStore![index].isNew == true ? Color(0xffffffff) : Colors.transparent,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12,),
                            Text(
                              '${snapshot.data?.homeStore![index].title}',
                              textAlign:  TextAlign.center,
                              style:  const TextStyle (
                                fontFamily: 'SF Pro Display',
                                fontSize:  20,
                                fontWeight:  FontWeight.w700,
                                color:  Color(0xffffffff),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Text(
                              '${snapshot.data?.homeStore![index].subtitle}',
                              textAlign:  TextAlign.center,
                              style:  const TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize:  11,
                                fontWeight:  FontWeight.w400,
                                color:  Color(0xffffffff),
                              ),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(5)),
                                  minimumSize: const Size(88, 25),
                                  maximumSize: const Size(88, 25),
                                  backgroundColor: Color(0xffffffff),
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Buy now!',
                                  textAlign:  TextAlign.center,
                                  style:  TextStyle (
                                    fontFamily: 'SF Pro Display',
                                    fontSize:  11,
                                    fontWeight:  FontWeight.w700,
                                    height:  1.2575,
                                    letterSpacing:  -0.3333333433,
                                    color:  Color(0xff010035),
                                  ),
                                ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                );
              }
          ),
        );
      } else  {
        return Text('Error');
      }
    },
  );
}