import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/color.dart';
import 'package:food_app/components/category_tab.dart';
import 'package:food_app/constatnt.dart';
import 'package:food_app/pages/home/home_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getHeader(),
          _getSearch(),
          _getCategories()
        ],
      ),
    );
  }
  Widget  _getHeader() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: gap, right: gap, top: gap),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hey, Youssef", style: TextStyle(
                    fontSize: 20,
                    fontWeight:  FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  Text("Let's find quality food",style: TextStyle(
                    fontWeight: FontWeight.w600,
                      color: primary.withOpacity(0.5)
                  ),)
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(gap),
                child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset("assets/images/profile.jpeg")
                ),
              )
            ]
        ),
      ),
    );
  }

  _getSearch() {
    return Container(
      padding: EdgeInsets.only(left: gap, right: gap, top: gap),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius:  6,
                      spreadRadius: 6,
                      offset: Offset(0,03),
                      color:  black.withOpacity(0.03)
                    )
                  ]
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: white,
                    hintText: "Search food...",
                    hintStyle: TextStyle(
                        color: primary.withOpacity(0.5)
                    ),
                    prefixIcon:  Container(
                        padding: EdgeInsets. all(10),
                        width: 28,
                        height: 28,
                        child: SvgPicture.asset("assets/icons/search.svg")
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(gap),
                      borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(gap),
                        borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(gap),
                color: secondPrimary
              ),
              padding:  EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                width: 28,
                height: 28,
                child: SvgPicture.asset("assets/icons/filter.svg"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getCategories() {
    return Container(
      padding: EdgeInsets.only(top: gap),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: gap, right: gap),
            child: Text("Categories", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
          ),
          SizedBox(height: gap,),
          CategoryTab()
        ],
      ),
    );
  }
}
