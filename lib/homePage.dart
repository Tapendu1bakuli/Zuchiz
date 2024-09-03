import 'package:flutter/material.dart';
import 'package:zuchiz/utils/app_colors.dart';
import 'package:zuchiz/utils/app_strings.dart';

import 'model/food_model.dart';
import 'model/foodInfo.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size totalScreenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: totalScreenSize.height * 0.065,
                      width: totalScreenSize.width * 0.115,
                      decoration: BoxDecoration(
                          color: CustomColor.secondaryBackgroundColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.sort_rounded,
                        color: CustomColor.primaryWhiteColor,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          AppStrings.deliverTo,
                          style: TextStyle(
                              color: CustomColor.primaryWhiteColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: totalScreenSize.height * 0.002,
                        ),
                        const Text(
                          AppStrings.constructor,
                          style: TextStyle(
                            color: CustomColor.primaryColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: totalScreenSize.height * 0.065,
                      width: totalScreenSize.width * 0.115,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  AppStrings.profileImage)),
                          color: CustomColor.secondaryBackgroundColor,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: totalScreenSize.height * 0.025,
                ),
                const Text(
                  AppStrings.whatYouWouldLike,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CustomColor.primaryWhiteColor,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: totalScreenSize.height * 0.027,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: totalScreenSize.height * 0.065,
                      width: totalScreenSize.width * 0.785,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: AppStrings.findForRestaurant,
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: CustomColor.secondaryBackgroundColor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: totalScreenSize.height * 0.065,
                      width: totalScreenSize.width * 0.115,
                      decoration: BoxDecoration(
                        color: CustomColor.secondaryBackgroundColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.tune,
                        color: CustomColor.primaryWhiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: totalScreenSize.height * 0.027,
                ),
                SizedBox(
                  height: totalScreenSize.height * 0.185,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: foodList.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: (() {

                          }),
                          child: Container(
                            width: totalScreenSize.width * 0.22,
                            decoration: BoxDecoration(
                              color: CustomColor.secondaryBackgroundColor,
                              borderRadius: BorderRadius.circular(55),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: totalScreenSize.height * 0.1,
                                    width: totalScreenSize.width * 0.2,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                foodList[index].image)),
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    height: totalScreenSize.height * 0.015,
                                  ),
                                  Text(
                                    foodList[index].name,
                                    style: const TextStyle(color: CustomColor.primaryWhiteColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: totalScreenSize.height * 0.015,
                ),
                const Text(
                  AppStrings.fastestDelivery,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: CustomColor.primaryWhiteColor,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: totalScreenSize.height * 0.020,
                ),
                SizedBox(
                  height: totalScreenSize.height * 0.357,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: foodDetailsList.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: (() {

                              }),
                              child: Container(
                                width: totalScreenSize.width * 0.65,
                                decoration: BoxDecoration(
                                  color: CustomColor.secondaryBackgroundColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: totalScreenSize.height * 0.19,
                                      width: totalScreenSize.width * 0.65,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                          NetworkImage(foodDetailsList[index].image),
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                foodDetailsList[index].name,
                                                style: const TextStyle(
                                                    color: CustomColor.primaryWhiteColor,
                                                    fontSize: 17,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.alarm,
                                                    size: 16,
                                                    color: Color(
                                                      0xff513330,
                                                    ),
                                                  ),
                                                  Text(
                                                    foodDetailsList[index].time,
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        color: CustomColor.primaryWhiteColor),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: totalScreenSize.height * 0.005,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xffFCD506),
                                                size: 16,
                                              ),
                                              Text(
                                                foodDetailsList[index].ratting,
                                                style: const TextStyle(
                                                    fontSize: 14.5,
                                                    color: CustomColor.primaryWhiteColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: totalScreenSize.height * 0.009,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                    color: const Color(
                                                        0xff40404B)),
                                                height:
                                                totalScreenSize.height * 0.045,
                                                width: totalScreenSize.width * 0.2,
                                                child: const Center(
                                                  child: Text(
                                                      AppStrings.fastfood,
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        color: CustomColor.primaryWhiteColor),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: totalScreenSize.width * 0.025,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                    color: const Color(
                                                        0xff40404B)),
                                                height:
                                                totalScreenSize.height * 0.045,
                                                width: totalScreenSize.width * 0.2,
                                                child: const Center(
                                                  child: Text(
                                                      AppStrings.chicken,
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        color: CustomColor.primaryWhiteColor),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: totalScreenSize.width * 0.025,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                    color: const Color(
                                                        0xff40404B)),
                                                height:
                                                totalScreenSize.height * 0.045,
                                                width: totalScreenSize.width * 0.12,
                                                child: const Center(
                                                  child: Text(
                                                      AppStrings.fries,
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        color: CustomColor.primaryWhiteColor),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 0,
                              child: Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.favorite_rounded,
                                    size: 25,
                                    color: CustomColor.primaryWhiteColor,
                                  )),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}