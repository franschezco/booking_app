import 'package:booking_app/util/app_layout.dart';
import 'package:booking_app/util/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({Key? key ,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(color: Styles.primaryColor, borderRadius: BorderRadius.circular(24),
      boxShadow: [
        BoxShadow( color: Colors.grey.shade200,blurRadius: 2,spreadRadius: 1,),

          ]),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(

              color: Styles.primaryColor,
              image:  DecorationImage(
                  fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}")
              )
            ),
          ),
          const Gap(15),
          Text("${hotel['place']}",style: Styles.headLineStyle2.copyWith(color: Colors.grey), ),
          const Gap(8),
          Text("${hotel['destination']}",textAlign: TextAlign.start,style: Styles.headLineStyle2.copyWith(color: Colors.white),),
          Text("\$${hotel['price']}",textAlign: TextAlign.start,style: Styles.headLineStyle2.copyWith(color: Colors.grey),),
          const Gap(15),

        ],
      )
    );
  }
}
