import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../category_provider/category_provider.dart';
import '../category_provider/model_category.dart';

class CartPage1 extends StatefulWidget {
  const CartPage1({Key? key}) : super(key: key);

  @override
  State<CartPage1> createState() => _CartPage1State();
}

class _CartPage1State extends State<CartPage1> with TickerProviderStateMixin {
  void initState() {
    CategoryProvider categoryProvider =
        Provider.of<CategoryProvider>(context, listen: false);
    categoryProvider.getCategoryProvider();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CategoryProvider categoryProvider = Provider.of<CategoryProvider>(
      context,
    );
    TabController _tabController = TabController(length: 5, vsync: this);
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "MARENGOO",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.only(left: 14, right: 11),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "NEW IN",
                  ),
                  Tab(
                    text: "MENS",
                  ),
                  Tab(
                    text: "WOMENS",
                  ),
                  Tab(
                    text: "KIDS",
                  ),
                  Tab(
                    text: "ACCESSORIES",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                width: 50.w,
                height: 50.h,
                child: TabBarView(
                    controller: _tabController,
                    children: [
                      Image(image: NetworkImage(
                        ''
                      ))

                ]),
              ),

            ]),
          )
        ])))));
  }
}
