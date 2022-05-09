import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

Widget buildGridProducts(context) => Container(
      width: 192,
      height: 270,

      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 192,
            height: 205,
            decoration: BoxDecoration(
              border: Border.all(color: HexColor("#E2E2E2"), width: 1.0),
            ),
            child: Column(
              children: [
                Center(
                    child: Image.asset(
                  "assets/carrera.png",
                  fit: BoxFit.cover,
                )),

                Center(child: Image.asset("assets/glasses.png")),

                SizedBox(
                  height: 10.0,
                ),

                Row(
                  children: [
                    Container(
                      width: 91,
                      height: 30,
                      color: HexColor("#707070"),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/glass-item.png",
                              width: 32,
                              height: 17,
                              fit: BoxFit.cover,
                            )),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(


                                child: Text(
                              "TRY ME",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w800),
                            ))
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: HexColor("#FFB300"),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            width: 192,
            height: 50,
            padding: EdgeInsets.only(left: 2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "985.00 SR",
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                ),
                Text(
                  "985.00 SR",
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
