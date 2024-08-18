import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.only(top: 20),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 140,
                    decoration: BoxDecoration(
                        color: Color(0xFFCEDDEE),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF475268).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          )
                        ]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
