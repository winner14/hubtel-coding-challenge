import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hubtel_assessment/app/resources/constants.dart';
import 'package:hubtel_assessment/app/widgets/divider/my_divider.dart';
import 'package:hubtel_assessment/app/widgets/texts/texts.dart';

class TransCard extends StatelessWidget {
  final String logo;
  final String time;
  final String name;
  final String phone;
  final String status;
  final String amount;
  const TransCard({
    super.key,
    required this.logo,
    required this.time,
    required this.name,
    required this.phone,
    required this.status,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        // height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColors.mySecondaryColor,
            width: .5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  MyText(
                    text: time,
                    fontSize: 13,
                    color: AppColors.myTextColorDisabled,
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.mySecondaryColor,
                        child: MyText(text: logo),
                      ),
                    ],
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: name,
                          fontSize: 14,
                          maxLines: 2,
                          textOverflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.left,
                        ),
                        MyText(
                          text: phone,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.myTextColorDisabled,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: status == 'successfull'
                              ? Colors.green[200]
                              : Colors.red[200],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: status == 'successfull'
                                    ? Colors.green
                                    : Colors.red,
                              ),
                              const SizedBox(width: 5),
                              MyText(
                                text: status,
                                fontSize: 11,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                      MyText(
                        text: amount,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
              MyDivider(),
              const SizedBox(height: 10),
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.mySecondaryColor,
                        child: Icon(Icons.person),
                      ),
                      SizedBox(width: 8),
                      MyText(
                        text: 'Personal . Coll your heart wai',
                        color: AppColors.myTextColorDisabled,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
