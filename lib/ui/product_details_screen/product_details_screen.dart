import 'package:flutter/material.dart';
import 'package:test_app_kalchuk235/ui/my_cart_screen/my_cart_screen.dart';

import '../../constants/constants.dart';
import '../../net/get_api_data_for_product_details_page.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  late Future<ApiForDetailsPage> apiGetForDetailsPage;

  @override
  void initState() {
    super.initState();
    apiGetForDetailsPage = getDataForDetailsPAge();
    // bestSellerList = getBestSellerList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 70,),
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
                    Icons.keyboard_arrow_left,
                    size: 15,
                  ),
                ),
                Expanded(child: SizedBox()),
                const Text(
                  'Product Details',
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyCart()),
                    );
                  },
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
          ],
        ),
      ),
    );
  }
}
