import 'package:flutter/material.dart';
import 'package:test_app_kalchuk235/constants/constants.dart';
import 'package:test_app_kalchuk235/ui/product_details_screen/product_details_screen.dart';



import '../../net/get_api_data_for_home_page.dart';
import 'home_screen_widgets/build_best_seller_item.dart';
import 'home_screen_widgets/build_geo_with_filters.dart';
import 'home_screen_widgets/build_hot_sales_with_button.dart';
import 'home_screen_widgets/build_scroll_hot_sales.dart';
import 'home_screen_widgets/build_scroll_item.dart';
import 'home_screen_widgets/build_search_and_orange_button.dart';
import 'home_screen_widgets/build_select_category_with_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // late Future<BestSellerList> bestSellerList;
  late Future<ApiForHomePage> apiGetForHomePage;

  @override
  void initState() {
    super.initState();
    apiGetForHomePage = getDataForHomePage();
    // bestSellerList = getBestSellerList();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffF5F5F5),
      body: Container(
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 40,),
                    buildGeoWithFilters(scaffoldKey),
                    const SizedBox(height: 1,),
                    buildSelectCategoryWithButton(),
                    const SizedBox(height: 24,),
                    buildScrollItem(),
                    const SizedBox(height: 35,),
                    buildSearchAndOrangeButton(),
                    const SizedBox(height: 24,),
                    buildHotSalesWithButton(),
                    buildScrollHotSales(context, apiGetForHomePage),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 17,),
                          const Text(
                            'Best Seller',
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
                              'see more',
                              textAlign:  TextAlign.center,
                              style:  TextStyle(
                                fontFamily: 'Mark Pro',
                                fontSize:  15,
                                fontWeight:  FontWeight.w400,
                                color:  Color(0xffff6d4d),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12,),
                        ],
                      ),
                    ),
                    buildBestSellerItem(context, apiGetForHomePage),
                    SizedBox(height: 100,),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 72,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:  Constants.blackColorPalette,
                      borderRadius:  BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 50,),
                        Image.asset('assets/icons/ellipse_icon.png'),
                        const SizedBox(width: 7,),
                        const Text(
                          'Explorer',
                          textAlign:  TextAlign.center,
                          style:  TextStyle(
                            fontFamily: 'Mark Pro',
                            fontSize:  15,
                            fontWeight:  FontWeight.w700,
                            color:  Color(0xffffffff),
                          ),
                        ),
                        const SizedBox(width: 47,),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            splashRadius: 15,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ProductDetails()),
                              );
                            },
                            icon: Image.asset('assets/icons/shop_icon.png'),
                          ),
                        ),
                        const SizedBox(width: 25,),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            splashRadius: 15,
                            onPressed: () {},
                            icon: Image.asset('assets/icons/favorite_icon.png'),
                          ),
                        ),
                        const SizedBox(width: 25,),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            splashRadius: 15,
                            onPressed: () {},
                            icon: Image.asset('assets/icons/person_icon.png'),
                          ),
                        ),
                      ],
                    ),
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
