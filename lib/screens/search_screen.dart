import 'package:booking_app/util/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:booking_app/util/app_layout.dart';
import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const Gap(40),
          Text("What are\nyou looking for ?" ,style: Styles.headLineStyle.copyWith(fontSize: 35)),
          const Gap(25),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child:
                Row(
                  children: [
                    Container(

                      width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(7),),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50)),),
                      color: Colors.white,
                    ),
                  child:Center(child: Text("Airline Tickets")),),
                    //airline ticket

                    //hotel
                    Container(

                      width: size.width*.44,
                      padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(7),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50)),),
                        color: Colors.transparent,
                      ),
                      child:Center(child: Text("Hotels")),),
                  ],

                )
              ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFF4F6FD)
              ),
            ),
          ),
          const Gap(25),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12),horizontal: AppLayout.getWidth(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,


            ),
            child: Row(
        children:[

          const Icon(Icons.flight_takeoff_rounded,color: Color(0xFFBFC2DF))
          ,Gap(AppLayout.getWidth(10))
    ,Text("Departure", style: Styles.textStyle,)
          ]
    ),
          ),
          const Gap(25),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12),horizontal: AppLayout.getWidth(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,


            ),
            child: Row(
                children:[

                  const Icon(Icons.flight_land_rounded ,color: Color(0xFFBFC2DF))
                  ,Gap(AppLayout.getWidth(10))
                  ,Text("Arrival", style: Styles.textStyle,)
                ]

            ),

          ),Gap(AppLayout.getWidth(20)),
          Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15),horizontal: AppLayout.getWidth(15)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xD91130CE),
        ),
          child:Center(
            child: Text("Find Ticket", textAlign: TextAlign.center, style: Styles.textStyle.copyWith(color:Colors.white),

            ),
          )
    ),
          const Gap(25),
          Container(
            child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Flights", style: Styles.headLineStyle2,),
                  InkWell(
                      onTap: (){
                        print("You are tapped");
                      },
                      child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                ],
              )
          ),
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.shade200,
                          blurRadius: 1,
                  spreadRadius: 1,
                )

                    ]

                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                            image:DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/sit.jpg"

                              )
                            )
                      ),
                    ),
                    const Gap(10),
                    Text("20% discount on early bookings of this flight.\n \nDon't miss out ..." ,style:Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,))
                  ],
                ),
              ),

              Column(
                children: [
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      color: Color(0xFF3A8888),
                          borderRadius: BorderRadius.circular(18)
                        ,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                    child: Column(
                      children: [
                        Text("Discount \n for survey",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        const Gap(25),
                        Text("Take the survey about our services and get discount",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFFFC6545)
                    ),
                    child: Column(
                    children: [
                      Text("Take Love" , style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                      const Gap(10),
                      RichText(text: const TextSpan(children: [TextSpan(
                      text: ''
                      )]))
                    ],

                    ),
                  )
                ],
              ),

            ],
          )

        ],
      ),
    );
  }
}
