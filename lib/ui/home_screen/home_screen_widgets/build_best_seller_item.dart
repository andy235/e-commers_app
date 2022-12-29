import 'package:flutter/material.dart';

import '../../../net/get_api_data_for_home_page.dart';


FutureBuilder<ApiForHomePage>buildBestSellerItem(BuildContext context, bestSellerList) {
  return FutureBuilder<ApiForHomePage>(
    future: bestSellerList,
    builder: (context, snapshot) {
      if(snapshot.hasData) {
        return Container(
          width: MediaQuery.of(context).size.width - 28,
          height: 460,
          child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: snapshot.data?.bestSeller?.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.79,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.network('${snapshot.data?.bestSeller![index].picture}', height: 168, width: 187,),
                          Padding(
                            padding: const EdgeInsets.only(left: 127, top: 3, right: 15, bottom: 107 ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xffffffff),
                              child: Image.asset(snapshot.data?.bestSeller![index].isFavorites == true ? 'assets/icons/is_favorite.png' : 'assets/icons/is_not_favorite.png'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 21,),
                          Text(
                            '\$${snapshot.data?.bestSeller![index].priceWithoutDiscount}',
                            textAlign:  TextAlign.center,
                            style:  const TextStyle (
                              fontFamily: 'Mark Pro',
                              fontSize:  16,
                              fontWeight:  FontWeight.w700,
                              color:  Color(0xff010035),
                            ),
                          ),
                          const SizedBox(width: 7,),
                          Text(
                            '\$ ${snapshot.data?.bestSeller![index].discountPrice}',
                            textAlign:  TextAlign.center,
                            style:  const TextStyle(
                              fontFamily: 'Mark Pro',
                              fontSize:  10,
                              fontWeight:  FontWeight.w500,
                              height:  1.2575,
                              letterSpacing:  -0.3333333433,
                              decoration:  TextDecoration.lineThrough,
                              color:  Color(0xffcccccc),
                              decorationColor:  Color(0xffcccccc),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          SizedBox(width: 21,),
                          Text(
                            '${snapshot.data?.bestSeller![index].title}',
                            style:  const TextStyle (
                              fontFamily: 'Mark Pro',
                              fontSize:  10,
                              fontWeight:  FontWeight.w400,
                              color:  Color(0xff010035),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
          ),
        );
      } else {
        return const Text("Error");
      }
    },
  );
}