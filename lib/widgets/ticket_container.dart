import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:booking_app/util/app_styles.dart';
class TicketContainer extends StatelessWidget {
  const TicketContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Flutter DB",style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
              Text("5221 478566",style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Passenger",style: Styles.headLineStyle4,),
              Text("Passport",style: Styles.headLineStyle4,),
            ],
          ),
          const Gap (35),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("0055 444 77147",style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
              Text("B25QG28",style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Number of E-tickets",style: Styles.headLineStyle3,),
              Text("Booking Code",style: Styles.headLineStyle3,),
            ],
          ),
          const Gap (35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("0055 444 77147",style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
              Text("B25QG28",style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
            ],
          ),

          const Gap (35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/visa.png", scale: 11,),Text(' *** 2462', style:Styles.headLineStyle3.copyWith(color: Colors.black87),)
                    ],
                  ),
                  const Gap (5),
                  Text("Payment method", style: Styles.headLineStyle4,)

                ],
              ),
              Text("\$ 4,222",style: Styles.headLineStyle3.copyWith(color: Colors.black87),),

            ],
          )
        ],
      ),

    );
  }
}
