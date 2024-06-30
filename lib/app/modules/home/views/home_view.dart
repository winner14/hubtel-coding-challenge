import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hubtel_assessment/app/resources/constants.dart';
import 'package:hubtel_assessment/app/widgets/cards/Tans_card.dart';
import 'package:hubtel_assessment/app/widgets/divider/my_divider.dart';
import 'package:hubtel_assessment/app/widgets/texts/texts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.myBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: GestureDetector(
            onTap: () {
              controller.searchFocusNode.unfocus();
            },
            child: Column(
              children: [
                const SizedBox(height: 20),
                SafeArea(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.mySecondaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.myPrimaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: 'History',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                // color: Color.fromARGB(255, 22, 148, 10),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: 'Transaction Summary',
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.myTextColorDisabled,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const MyDivider(),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.mySecondaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          controller: controller.searchController,
                          focusNode: controller.searchFocusNode,
                          decoration: const InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: AppColors.myTextColor,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.myIconColor,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SizedBox(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mySecondaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: MyText(
                                    text: 'May 24, 2022',
                                    fontSize: 13,
                                    color: AppColors.myTextColorDisabled,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          const TransCard(
                            amount: 'GHS 500',
                            logo: 'MTN',
                            name: 'Kwabena Rockson Kwabena Uncle Ebo',
                            phone: '024 123 4567',
                            status: 'successfull',
                            time: '14:45PM',
                          ),
                          const TransCard(
                            amount: 'GHS 500',
                            logo: 'absa',
                            name: 'Absa Bank',
                            phone: '024 123 4567',
                            status: 'failed',
                            time: '14:45PM',
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mySecondaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: MyText(
                                    text: 'May 23, 2022',
                                    fontSize: 13,
                                    color: AppColors.myTextColorDisabled,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          const TransCard(
                            amount: 'GHS 500',
                            logo: 'MTN',
                            name: 'Kwabena Rockson Kwabena Uncle Ebo',
                            phone: '024 123 4567',
                            status: 'successfull',
                            time: '14:45PM',
                          ),
                          const TransCard(
                            amount: 'GHS 500',
                            logo: 'absa',
                            name: 'Absa Bank',
                            phone: '024 123 4567',
                            status: 'failed',
                            time: '14:45PM',
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
