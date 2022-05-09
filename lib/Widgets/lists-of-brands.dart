
import 'package:flutter/material.dart';
Widget buildBrandItems() => Container(
  height: 100.0,
  padding: const EdgeInsets.symmetric(horizontal: 10.0),
  child: ListView.separated(
    shrinkWrap: true,
    primary: true,
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index)=>Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
          width: 118.0, height:53.0,
              child: Image.asset("assets/polo.png", fit: BoxFit.cover,)),

          Container(
              width: 123.0, height:50.0,
              margin: EdgeInsets.only(bottom: 7.0),
              child: Image.asset("assets/Hangar.png", fit: BoxFit.cover,)),
          SizedBox(
            width: 10.0,
          ),
          Image.asset("assets/safilo.png",width: 103.0, height:46.0, fit: BoxFit.cover,),
          SizedBox(
            width: 10.0,
          ),
          Image.asset("assets/Moschino.png",width: 165.0, height:74.0, fit: BoxFit.cover,),
        ],
      ),
    ),
    separatorBuilder: (context, index)=> const SizedBox(
      width: 5.0,
    ),
    itemCount: 4,
  ),
);