import 'package:ecom_ui/widgets/AllItemsWidget.dart';
import 'package:ecom_ui/widgets/HomeBottomNavBar.dart';
import 'package:ecom_ui/widgets/RowItemWidget.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF475269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          )
                        ]),
                    child: const Icon(
                      Icons.sort,
                      size: 30,
                      color: Color(0xFF475269),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]),
                      child: badges.Badge(
                        badgeContent: const Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          size: 30,
                          color: Color(0xFF475269),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]),
              child: Row(
                children: [
                  SizedBox(
                    // margin: EdgeInsets.only(left: 5),
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.search,
                    size: 27,
                    color: Color(0xFF475269),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RowItemWidget(),
            SizedBox(
              height: 20,
            ),
            Allitemswidget()
          ],
        ),
      )),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
