import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:optixtest/Widgets/grid_products.dart';
import 'package:optixtest/Widgets/lists-of-brands.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            // width: 40.0,
            //   height: 30.0,
            child: Image.asset(
          "assets/optixtext.png",
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "English",
                  style: TextStyle(color: HexColor("#FFB300")),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  width: 1.0,
                  height: 10.0,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text("SAR",style: TextStyle(color: HexColor("#2A2928")),),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              width: 393,
              height: 45.0,
              decoration: BoxDecoration(
                  color: HexColor("#F4F4F4"),
                  borderRadius: BorderRadius.circular(2.0)),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                //controller: searchController,
                keyboardType: TextInputType.text,
                validator: (val) {
                  if (val!.isEmpty) {
                    return "please Enter text to search";
                  }
                },
                onFieldSubmitted: (String text) {},

                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25.0,
                  ),
                  labelText: "What are you looking for?",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 309,
              child: Image.asset("assets/banner.png"),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Image.asset(
                          "assets/image1.png",
                          width: 78,
                          height: 78,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                          width: 57,
                          height: 36,
                          child: Text(
                            "Contact Lenses",
                            style: TextStyle(color: HexColor("#707070")),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/image2.png",
                        width: 78,
                        height: 78,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                          width: 30,
                          height: 20,
                          child: Text(
                            "Men",
                            style: TextStyle(color: HexColor("#707070")),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/image3.png",
                        width: 78,
                        height: 78,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                          width: 55,
                          height: 20,
                          child: Text(
                            "Women",
                            style: TextStyle(color: HexColor("#707070")),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/image4.png",
                        width: 78,
                        height: 78,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                          width: 29,
                          height: 20,
                          child: Text(
                            "Kids",
                            style: TextStyle(
                              color: HexColor("#707070"),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              width: 115,
              height: 23,
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "NEW ARRIVALS",
                style: TextStyle(color: HexColor("#2A2928")),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 18,
                        height: 20,
                        child: Text(
                          "All",
                          style: TextStyle(color: HexColor("#707070")),
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 1,
                        color: HexColor("#2A2928"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                      width: 30,
                      height: 20,
                      child: Text(
                        "Men",
                        style: TextStyle(color: HexColor("#707070")),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                      width: 55,
                      height: 20,
                      child: Text(
                        "Women",
                        style: TextStyle(color: HexColor("#707070")),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                      width: 29,
                      height: 20,
                      child: Text(
                        "Kids",
                        style: TextStyle(color: HexColor("#707070")),
                      )),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 373,
                height: 1.0,
                color: HexColor("E2E2E2"),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                 crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                childAspectRatio: 1.1 / 1.5,
                // width/height
                children: List.generate(
                  6,
                  (index) => buildGridProducts(context),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            buildBrandItems(),



          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Container(
            child: Image.asset(
          "assets/floatAction.png",
          width: 50,
          height: 50,
        )),
        backgroundColor: HexColor("#FFB300"),
        onPressed: () {},
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: HexColor("#EDEDED"), blurRadius: 2, spreadRadius: 1),
        ]),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Image.asset(
                      "assets/home-icon.png",
                      width: 21,
                      height: 21,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    "assets/category-icon.png",
                    width: 24,
                    height: 18,
                  ),
                  SizedBox(
                    height: 8.0,
                  )
                ],
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    "assets/cart-icon.png",
                    width: 20,
                    height: 25,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                ],
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    "assets/account-icon.png",
                    width: 28,
                    height: 28,
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                ],
              ),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    "assets/about-icon.png",
                    width: 28,
                    height: 28,
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                ],
              ),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
